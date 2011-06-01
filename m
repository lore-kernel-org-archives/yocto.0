Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 383A44C80655
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 17:06:37 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Jun 2011 15:06:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; d="scan'208";a="10565108"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2011 15:06:35 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, dongxiao.xu@intel.com, yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 17:04:20 -0500
Message-Id: <cff5dd5a4c2e3412d4868b5a89a3f39717318c20.1306964893.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306964893.git.tom.zanussi@intel.com>
References: <cover.1306964893.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2][KERNEL] usbnet: changes for upcoming cdc_ncm driver
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Jun 2011 22:06:37 -0000

From: Alexey Orishko

Changes:
include/linux/usb/usbnet.h:
- a new flag to indicate driver's capability to accumulate IP packets in Tx
 direction and extract several packets from single skb in Rx direction.
drivers/net/usb/usbnet.c:
- the procedure of counting packets in usbnet was updated due to the
 accumulating of IP packets in the driver
- no short packets are sent if indicated by the flag in driver_info
 structure

commit 073285fd392f6dc901da7c698d46e1e2a7e26436 upstream

Signed-off-by: Alexey Orishko
Signed-off-by: David S. Miller
Integrated-by: Dongxiao Xu
---
 drivers/net/usb/usbnet.c   |   45 ++++++++++++++++++++++++++++++-------------
 include/linux/usb/usbnet.h |    6 +++++
 2 files changed, 37 insertions(+), 14 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index c04d49e..cff74b8 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -391,14 +391,19 @@ static inline void rx_process (struct usbnet *dev, struct sk_buff *skb)
 		goto error;
 	// else network stack removes extra byte if we forced a short packet
 
-	if (skb->len)
-		usbnet_skb_return (dev, skb);
-	else {
-		netif_dbg(dev, rx_err, dev->net, "drop\n");
-error:
-		dev->net->stats.rx_errors++;
-		skb_queue_tail (&dev->done, skb);
+	if (skb->len) {
+		/* all data was already cloned from skb inside the driver */
+		if (dev->driver_info->flags & FLAG_MULTI_PACKET)
+			dev_kfree_skb_any(skb);
+		else
+			usbnet_skb_return(dev, skb);
+		return;
 	}
+
+	netif_dbg(dev, rx_err, dev->net, "drop\n");
+error:
+	dev->net->stats.rx_errors++;
+	skb_queue_tail(&dev->done, skb);
 }
 
 /*-------------------------------------------------------------------------*/
@@ -971,7 +976,8 @@ static void tx_complete (struct urb *urb)
 	struct usbnet		*dev = entry->dev;
 
 	if (urb->status == 0) {
-		dev->net->stats.tx_packets++;
+		if (!(dev->driver_info->flags & FLAG_MULTI_PACKET))
+			dev->net->stats.tx_packets++;
 		dev->net->stats.tx_bytes += entry->length;
 	} else {
 		dev->net->stats.tx_errors++;
@@ -1044,8 +1050,13 @@ netdev_tx_t usbnet_start_xmit (struct sk_buff *skb,
 	if (info->tx_fixup) {
 		skb = info->tx_fixup (dev, skb, GFP_ATOMIC);
 		if (!skb) {
-			netif_dbg(dev, tx_err, dev->net, "can't tx_fixup skb\n");
-			goto drop;
+			if (netif_msg_tx_err(dev)) {
+				netif_dbg(dev, tx_err, dev->net, "can't tx_fixup skb\n");
+				goto drop;
+			} else {
+				/* cdc_ncm collected packet; waits for more */
+				goto not_drop;
+			}
 		}
 	}
 	length = skb->len;
@@ -1067,13 +1078,18 @@ netdev_tx_t usbnet_start_xmit (struct sk_buff *skb,
 	/* don't assume the hardware handles USB_ZERO_PACKET
 	 * NOTE:  strictly conforming cdc-ether devices should expect
 	 * the ZLP here, but ignore the one-byte packet.
+	 * NOTE2: CDC NCM specification is different from CDC ECM when
+	 * handling ZLP/short packets, so cdc_ncm driver will make short
+	 * packet itself if needed.
 	 */
 	if (length % dev->maxpacket == 0) {
 		if (!(info->flags & FLAG_SEND_ZLP)) {
-			urb->transfer_buffer_length++;
-			if (skb_tailroom(skb)) {
-				skb->data[skb->len] = 0;
-				__skb_put(skb, 1);
+			if (!(info->flags & FLAG_MULTI_PACKET)) {
+				urb->transfer_buffer_length++;
+				if (skb_tailroom(skb)) {
+					skb->data[skb->len] = 0;
+					__skb_put(skb, 1);
+				}
 			}
 		} else
 			urb->transfer_flags |= URB_ZERO_PACKET;
@@ -1122,6 +1138,7 @@ netdev_tx_t usbnet_start_xmit (struct sk_buff *skb,
 		netif_dbg(dev, tx_err, dev->net, "drop, code %d\n", retval);
 drop:
 		dev->net->stats.tx_dropped++;
+not_drop:
 		if (skb)
 			dev_kfree_skb_any (skb);
 		usb_free_urb (urb);
diff --git a/include/linux/usb/usbnet.h b/include/linux/usb/usbnet.h
index 7ae27a4..44842c8 100644
--- a/include/linux/usb/usbnet.h
+++ b/include/linux/usb/usbnet.h
@@ -97,6 +97,12 @@ struct driver_info {
 
 #define FLAG_LINK_INTR	0x0800		/* updates link (carrier) status */
 
+/*
+ * Indicates to usbnet, that USB driver accumulates multiple IP packets.
+ * Affects statistic (counters) and short packet handling.
+ */
+#define FLAG_MULTI_PACKET	0x1000
+
 	/* init device ... can sleep, or cause probe() failure */
 	int	(*bind)(struct usbnet *, struct usb_interface *);
 
-- 
1.7.0.4


