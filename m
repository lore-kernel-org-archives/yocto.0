Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2742E00A04; Thu, 21 Jun 2018 06:03:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9548E008F5
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 06:03:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w5LD3Vtc012250
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 06:03:31 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Thu, 21 Jun 2018 06:03:30 -0700
To: Changqing Li <changqing.li@windriver.com>, <yocto@yoctoproject.org>
References: <1529561460-36755-1-git-send-email-changqing.li@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <d6ddd0a1-e857-996d-02ec-96bdeee4e764@windriver.com>
Date: Thu, 21 Jun 2018 09:03:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <1529561460-36755-1-git-send-email-changqing.li@windriver.com>
Subject: Re: [PATCH][meta-cloud-services] spice: remove spice receipe from meta-cloud-services
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Jun 2018 13:03:34 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 06/21/2018 02:11 AM, Changqing Li wrote:
> spice have been export to meta-openembedded/meta-networking,
> and have newer version. spice under this layer now have
> compile error, but spice under networking layer don't.
> Maybe we should not maintain 2 same spices, so delete it.

I'm going to hold onto this one a bit longer. We have specific
version requirements and will revisit when the next openstack
uprev is done.

Cheers,

Bruce

> 
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   ...ros-in-printf-to-keep-compatibility-betwe.patch |  72 ---------------
>   ...xl-Fix-BITMAP_FMT_IS_RGB-defined-but-not-.patch |  29 ------
>   recipes-support/spice/files/CVE-2017-7506-1.patch  |  81 -----------------
>   recipes-support/spice/files/CVE-2017-7506-2.patch  |  37 --------
>   recipes-support/spice/files/CVE-2017-7506-3.patch  |  54 -----------
>   .../spice/files/Fix-build-issues-with-gcc-7.patch  |  59 ------------
>   .../build-allow-separated-src-and-build-dirs.patch |  62 -------------
>   ...ac-add-subdir-objects-to-AM_INIT_AUTOMAKE.patch |  29 ------
>   .../spice/files/spice-fix-CVE-2013-4282.patch      | 100 ---------------------
>   recipes-support/spice/spice_git.bb                 |  79 ----------------
>   10 files changed, 602 deletions(-)
>   delete mode 100644 recipes-support/spice/files/0001-Use-PRI-macros-in-printf-to-keep-compatibility-betwe.patch
>   delete mode 100644 recipes-support/spice/files/0001-red_parse_qxl-Fix-BITMAP_FMT_IS_RGB-defined-but-not-.patch
>   delete mode 100644 recipes-support/spice/files/CVE-2017-7506-1.patch
>   delete mode 100644 recipes-support/spice/files/CVE-2017-7506-2.patch
>   delete mode 100644 recipes-support/spice/files/CVE-2017-7506-3.patch
>   delete mode 100644 recipes-support/spice/files/Fix-build-issues-with-gcc-7.patch
>   delete mode 100644 recipes-support/spice/files/build-allow-separated-src-and-build-dirs.patch
>   delete mode 100644 recipes-support/spice/files/configure.ac-add-subdir-objects-to-AM_INIT_AUTOMAKE.patch
>   delete mode 100644 recipes-support/spice/files/spice-fix-CVE-2013-4282.patch
>   delete mode 100644 recipes-support/spice/spice_git.bb
> 
> diff --git a/recipes-support/spice/files/0001-Use-PRI-macros-in-printf-to-keep-compatibility-betwe.patch b/recipes-support/spice/files/0001-Use-PRI-macros-in-printf-to-keep-compatibility-betwe.patch
> deleted file mode 100644
> index 18fa8fa..0000000
> --- a/recipes-support/spice/files/0001-Use-PRI-macros-in-printf-to-keep-compatibility-betwe.patch
> +++ /dev/null
> @@ -1,72 +0,0 @@
> -From 3cb746329ea4846bd9c65e0198e69423379b6f62 Mon Sep 17 00:00:00 2001
> -From: =?UTF-8?q?=EC=86=8C=EB=B3=91=EC=B2=A0?= <byungchul.so@samsung.com>
> -Date: Thu, 24 Apr 2014 12:26:32 +0000
> -Subject: [PATCH] Use PRI macros in printf to keep compatibility between
> - 32/64bit system
> -
> -gcc's some integer type definitions are different between 32/64bit system.
> -This causes platform dependency problem with printf function. However,
> -we can avoid this problem by using PRI macros that supports platform
> -independent printf.
> ----
> - server/mjpeg_encoder.c | 7 ++++---
> - server/red_worker.c    | 4 ++--
> - 2 files changed, 6 insertions(+), 5 deletions(-)
> -
> -diff --git a/server/mjpeg_encoder.c b/server/mjpeg_encoder.c
> -index aea4964..f465d88 100644
> ---- a/server/mjpeg_encoder.c
> -+++ b/server/mjpeg_encoder.c
> -@@ -23,6 +23,7 @@
> - #include "mjpeg_encoder.h"
> - #include <jerror.h>
> - #include <jpeglib.h>
> -+#include <inttypes.h>
> -
> - #define MJPEG_MAX_FPS 25
> - #define MJPEG_MIN_FPS 1
> -@@ -66,7 +67,7 @@ static const int mjpeg_quality_samples[MJPEG_QUALITY_SAMPLE_NUM] = {20, 30, 40,
> -  * are not necessarily related to mis-estimation of the bit rate, and we would
> -  * like to wait till the stream stabilizes.
> -  */
> --#define MJPEG_WARMUP_TIME 3000L // 3 sec
> -+#define MJPEG_WARMUP_TIME 3000LL // 3 sec
> -
> - enum {
> -     MJPEG_QUALITY_EVAL_TYPE_SET,
> -@@ -638,7 +639,7 @@ static void mjpeg_encoder_adjust_params_to_bit_rate(MJpegEncoder *encoder)
> -
> -     spice_debug("cur-fps=%u new-fps=%u (new/old=%.2f) |"
> -                 "bit-rate=%.2f (Mbps) latency=%u (ms) quality=%d |"
> --                " new-size-avg %lu , base-size %lu, (new/old=%.2f) ",
> -+                " new-size-avg %"PRIu64" , base-size %"PRIu64", (new/old=%.2f) ",
> -                 rate_control->fps, new_fps, ((double)new_fps)/rate_control->fps,
> -                 ((double)rate_control->byte_rate*8)/1024/1024,
> -                 latency,
> -@@ -703,7 +704,7 @@ static void mjpeg_encoder_adjust_fps(MJpegEncoder *encoder, uint64_t now)
> -
> -         avg_fps = ((double)rate_control->adjusted_fps_num_frames*1000) /
> -                   adjusted_fps_time_passed;
> --        spice_debug("#frames-adjust=%lu #adjust-time=%lu avg-fps=%.2f",
> -+        spice_debug("#frames-adjust=%"PRIu64" #adjust-time=%"PRIu64" avg-fps=%.2f",
> -                     rate_control->adjusted_fps_num_frames, adjusted_fps_time_passed, avg_fps);
> -         spice_debug("defined=%u old-adjusted=%.2f", rate_control->fps, rate_control->adjusted_fps);
> -         fps_ratio = avg_fps / rate_control->fps;
> -diff --git a/server/red_worker.c b/server/red_worker.c
> -index 619f7bc..1871e13 100644
> ---- a/server/red_worker.c
> -+++ b/server/red_worker.c
> -@@ -2594,8 +2594,8 @@ static void red_print_stream_stats(DisplayChannelClient *dcc, StreamAgent *agent
> -         mjpeg_encoder_get_stats(agent->mjpeg_encoder, &encoder_stats);
> -     }
> -
> --    spice_debug("stream=%ld dim=(%dx%d) #in-frames=%lu #in-avg-fps=%.2f #out-frames=%lu "
> --                "out/in=%.2f #drops=%lu (#pipe=%lu #fps=%lu) out-avg-fps=%.2f "
> -+    spice_debug("stream=%"PRIdPTR" dim=(%dx%d) #in-frames=%"PRIu64" #in-avg-fps=%.2f #out-frames=%"PRIu64" "
> -+                "out/in=%.2f #drops=%"PRIu64" (#pipe=%"PRIu64" #fps=%"PRIu64") out-avg-fps=%.2f "
> -                 "passed-mm-time(sec)=%.2f size-total(MB)=%.2f size-per-sec(Mbps)=%.2f "
> -                 "size-per-frame(KBpf)=%.2f avg-quality=%.2f "
> -                 "start-bit-rate(Mbps)=%.2f end-bit-rate(Mbps)=%.2f",
> ---
> -2.10.2
> -
> diff --git a/recipes-support/spice/files/0001-red_parse_qxl-Fix-BITMAP_FMT_IS_RGB-defined-but-not-.patch b/recipes-support/spice/files/0001-red_parse_qxl-Fix-BITMAP_FMT_IS_RGB-defined-but-not-.patch
> deleted file mode 100644
> index ccae5f5..0000000
> --- a/recipes-support/spice/files/0001-red_parse_qxl-Fix-BITMAP_FMT_IS_RGB-defined-but-not-.patch
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -From 85838d4c9f2322aedb99b38fffd7da95a494d8ed Mon Sep 17 00:00:00 2001
> -From: He Zhe <zhe.he@windriver.com>
> -Date: Thu, 29 Jun 2017 08:26:35 +0000
> -Subject: [PATCH] red_parse_qxl: Fix BITMAP_FMT_IS_RGB defined but not used
> -
> -| ../../git/server/red_parse_qxl.c:367:18: error: 'BITMAP_FMT_IS_RGB'
> -defined but not used [-Werror=unused-const-variable=]
> -|  static const int BITMAP_FMT_IS_RGB[] = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1};
> -
> -Signed-off-by: He Zhe <zhe.he@windriver.com>
> ----
> - server/red_parse_qxl.c | 1 -
> - 1 file changed, 1 deletion(-)
> -
> -diff --git a/server/red_parse_qxl.c b/server/red_parse_qxl.c
> -index 6c0b0658..cfc2da95 100644
> ---- a/server/red_parse_qxl.c
> -+++ b/server/red_parse_qxl.c
> -@@ -364,7 +364,6 @@ static int bitmap_consistent(SpiceBitmap *bitmap)
> -
> - // This is based on SPICE_BITMAP_FMT_*, copied from server/red_worker.c
> - // to avoid a possible unoptimization from making it non static.
> --static const int BITMAP_FMT_IS_RGB[] = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1};
> -
> - static SpiceImage *red_get_image(RedMemSlotInfo *slots, int group_id,
> -                                  QXLPHYSICAL addr, uint32_t flags, int is_mask)
> ---
> -2.11.0
> -
> diff --git a/recipes-support/spice/files/CVE-2017-7506-1.patch b/recipes-support/spice/files/CVE-2017-7506-1.patch
> deleted file mode 100644
> index 1975aca..0000000
> --- a/recipes-support/spice/files/CVE-2017-7506-1.patch
> +++ /dev/null
> @@ -1,81 +0,0 @@
> -From 2e521a9db27e1ed31bf5fbed437208bf7f1c77a1 Mon Sep 17 00:00:00 2001
> -From: Frediano Ziglio <fziglio@redhat.com>
> -Date: Mon, 15 May 2017 15:57:28 +0100
> -Subject: [PATCH 1/3] reds: Disconnect when receiving overly big
> - ClientMonitorsConfig
> -
> -Total message size received from the client was unlimited. There is
> -a 2kiB size check on individual agent messages, but the MonitorsConfig
> -message can be split in multiple chunks, and the size of the
> -non-chunked MonitorsConfig message was never checked. This could easily
> -lead to memory exhaustion on the host.
> -
> -Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> -
> -Upstream-Status: Backport
> -[https://cgit.freedesktop.org/spice/spice/commit/?h=0.12&id=f1e7ec03e26ab6b8ca9b7ec060846a5b706a963d]
> -
> -CVE: CVE-2017-7506
> -
> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ----
> - server/reds.c | 25 +++++++++++++++++++++++--
> - 1 file changed, 23 insertions(+), 2 deletions(-)
> -
> -diff --git a/server/reds.c b/server/reds.c
> -index 30d0652..701d5d8 100644
> ---- a/server/reds.c
> -+++ b/server/reds.c
> -@@ -1086,19 +1086,34 @@ static void reds_client_monitors_config_cleanup(void)
> - static void reds_on_main_agent_monitors_config(
> -         MainChannelClient *mcc, void *message, size_t size)
> - {
> -+    const unsigned int MAX_MONITORS = 256;
> -+    const unsigned int MAX_MONITOR_CONFIG_SIZE =
> -+       sizeof(VDAgentMonitorsConfig) + MAX_MONITORS * sizeof(VDAgentMonConfig);
> -+
> -     VDAgentMessage *msg_header;
> -     VDAgentMonitorsConfig *monitors_config;
> -     RedsClientMonitorsConfig *cmc = &reds->client_monitors_config;
> -
> -+    // limit size of message sent by the client as this can cause a DoS through
> -+    // memory exhaustion, or potentially some integer overflows
> -+    if (sizeof(VDAgentMessage) + MAX_MONITOR_CONFIG_SIZE - cmc->buffer_size < size) {
> -+        goto overflow;
> -+    }
> -     cmc->buffer_size += size;
> -     cmc->buffer = realloc(cmc->buffer, cmc->buffer_size);
> -     spice_assert(cmc->buffer);
> -     cmc->mcc = mcc;
> -     memcpy(cmc->buffer + cmc->buffer_pos, message, size);
> -     cmc->buffer_pos += size;
> -+    if (sizeof(VDAgentMessage) > cmc->buffer_size) {
> -+        spice_debug("not enough data yet. %d", cmc->buffer_size);
> -+        return;
> -+    }
> -     msg_header = (VDAgentMessage *)cmc->buffer;
> --    if (sizeof(VDAgentMessage) > cmc->buffer_size ||
> --            msg_header->size > cmc->buffer_size - sizeof(VDAgentMessage)) {
> -+    if (msg_header->size > MAX_MONITOR_CONFIG_SIZE) {
> -+        goto overflow;
> -+    }
> -+    if (msg_header->size > cmc->buffer_size - sizeof(VDAgentMessage)) {
> -         spice_debug("not enough data yet. %d\n", cmc->buffer_size);
> -         return;
> -     }
> -@@ -1106,6 +1121,12 @@ static void reds_on_main_agent_monitors_config(
> -     spice_debug("%s: %d\n", __func__, monitors_config->num_of_monitors);
> -     red_dispatcher_client_monitors_config(monitors_config);
> -     reds_client_monitors_config_cleanup();
> -+    return;
> -+
> -+overflow:
> -+    spice_warning("received invalid MonitorsConfig request from client, disconnecting");
> -+    red_channel_client_disconnect(main_channel_client_get_base(mcc));
> -+    reds_client_monitors_config_cleanup();
> - }
> -
> - void reds_on_main_agent_data(MainChannelClient *mcc, void *message, size_t size)
> ---
> -2.7.4
> -
> diff --git a/recipes-support/spice/files/CVE-2017-7506-2.patch b/recipes-support/spice/files/CVE-2017-7506-2.patch
> deleted file mode 100644
> index a517b08..0000000
> --- a/recipes-support/spice/files/CVE-2017-7506-2.patch
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -From 6934f036240753a14514a71ede8bb44af2043f24 Mon Sep 17 00:00:00 2001
> -From: Frediano Ziglio <fziglio@redhat.com>
> -Date: Mon, 15 May 2017 15:57:28 +0100
> -Subject: [PATCH 2/3] reds: Avoid integer overflows handling monitor
> - configuration
> -
> -Avoid VDAgentMessage::size integer overflows.
> -
> -Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> -
> -Upstream-Status: Backport
> -[https://cgit.freedesktop.org/spice/spice/commit/?h=0.12&id=ec6229c79abe05d731953df5f7e9a05ec9f6df79]
> -
> -CVE: CVE-2017-7506
> -
> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ----
> - server/reds.c | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> -diff --git a/server/reds.c b/server/reds.c
> -index 701d5d8..62b1164 100644
> ---- a/server/reds.c
> -+++ b/server/reds.c
> -@@ -1117,6 +1117,9 @@ static void reds_on_main_agent_monitors_config(
> -         spice_debug("not enough data yet. %d\n", cmc->buffer_size);
> -         return;
> -     }
> -+    if (msg_header->size < sizeof(VDAgentMonitorsConfig)) {
> -+        goto overflow;
> -+    }
> -     monitors_config = (VDAgentMonitorsConfig *)(cmc->buffer + sizeof(*msg_header));
> -     spice_debug("%s: %d\n", __func__, monitors_config->num_of_monitors);
> -     red_dispatcher_client_monitors_config(monitors_config);
> ---
> -2.7.4
> -
> diff --git a/recipes-support/spice/files/CVE-2017-7506-3.patch b/recipes-support/spice/files/CVE-2017-7506-3.patch
> deleted file mode 100644
> index d55502f..0000000
> --- a/recipes-support/spice/files/CVE-2017-7506-3.patch
> +++ /dev/null
> @@ -1,54 +0,0 @@
> -From daedc2e2bb70f7cb0eafd65fd37fd73af12df770 Mon Sep 17 00:00:00 2001
> -From: Frediano Ziglio <fziglio@redhat.com>
> -Date: Mon, 15 May 2017 15:57:28 +0100
> -Subject: [PATCH 3/3] reds: Avoid buffer overflows handling monitor
> - configuration
> -
> -It was also possible for a malicious client to set
> -VDAgentMonitorsConfig::num_of_monitors to a number larger
> -than the actual size of VDAgentMOnitorsConfig::monitors.
> -This would lead to buffer overflows, which could allow the guest to
> -read part of the host memory. This might cause write overflows in the
> -host as well, but controlling the content of such buffers seems
> -complicated.
> -
> -Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> -
> -Upstream-Status: Backport
> -[https://cgit.freedesktop.org/spice/spice/commit/?h=0.12&id=a957a90baf2c62d31f3547e56bba7d0e812d2331]
> -
> -CVE: CVE-2017-7506
> -
> -Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ----
> - server/reds.c | 7 +++++++
> - 1 file changed, 7 insertions(+)
> -
> -diff --git a/server/reds.c b/server/reds.c
> -index 62b1164..ee36dec 100644
> ---- a/server/reds.c
> -+++ b/server/reds.c
> -@@ -1093,6 +1093,7 @@ static void reds_on_main_agent_monitors_config(
> -     VDAgentMessage *msg_header;
> -     VDAgentMonitorsConfig *monitors_config;
> -     RedsClientMonitorsConfig *cmc = &reds->client_monitors_config;
> -+    uint32_t max_monitors;
> -
> -     // limit size of message sent by the client as this can cause a DoS through
> -     // memory exhaustion, or potentially some integer overflows
> -@@ -1121,6 +1122,12 @@ static void reds_on_main_agent_monitors_config(
> -         goto overflow;
> -     }
> -     monitors_config = (VDAgentMonitorsConfig *)(cmc->buffer + sizeof(*msg_header));
> -+    // limit the monitor number to avoid buffer overflows
> -+    max_monitors = (msg_header->size - sizeof(VDAgentMonitorsConfig)) /
> -+                   sizeof(VDAgentMonConfig);
> -+    if (monitors_config->num_of_monitors > max_monitors) {
> -+        goto overflow;
> -+    }
> -     spice_debug("%s: %d\n", __func__, monitors_config->num_of_monitors);
> -     red_dispatcher_client_monitors_config(monitors_config);
> -     reds_client_monitors_config_cleanup();
> ---
> -2.7.4
> -
> diff --git a/recipes-support/spice/files/Fix-build-issues-with-gcc-7.patch b/recipes-support/spice/files/Fix-build-issues-with-gcc-7.patch
> deleted file mode 100644
> index 7fcafdc..0000000
> --- a/recipes-support/spice/files/Fix-build-issues-with-gcc-7.patch
> +++ /dev/null
> @@ -1,59 +0,0 @@
> -From 9f001b6818ac4baa1df010ccf4200ca56bfb11b2 Mon Sep 17 00:00:00 2001
> -From: Mark Asselstine <mark.asselstine@windriver.com>
> -Date: Wed, 23 Aug 2017 13:47:29 -0400
> -Subject: [PATCH] Fix build issues with gcc 7
> -
> -gcc 7 checks for when a switch statement doesn't break between
> -cases. When a break is not found you will see
> -
> -| ../../git/server/reds.c: In function 'vdi_port_read_one_msg_from_device':
> -| ../../git/server/reds.c:797:31: error: this statement may fall through [-Werror=implicit-fallthrough=]
> -|              state->read_state = VDI_PORT_READ_STATE_GET_BUFF;
> -|              ~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> -| ../../git/server/reds.c:798:9: note: here
> -|          case VDI_PORT_READ_STATE_GET_BUFF: {
> -|          ^~~~
> -
> -The 'fallthrough' comment will let gcc know this is done on purpose.
> -
> -Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
> ----
> - server/inputs_channel.c | 1 +
> - server/reds.c           | 2 ++
> - 2 files changed, 3 insertions(+)
> -
> -diff --git a/server/inputs_channel.c b/server/inputs_channel.c
> -index 931dac1..534ab66 100644
> ---- a/server/inputs_channel.c
> -+++ b/server/inputs_channel.c
> -@@ -321,6 +321,7 @@ static int inputs_channel_handle_parsed(RedChannelClient *rcc, uint32_t size, ui
> -             activate_modifiers_watch();
> -         }
> -     }
> -+        /* fallthrough */
> -     case SPICE_MSGC_INPUTS_KEY_UP: {
> -         SpiceMsgcKeyDown *key_down = (SpiceMsgcKeyDown *)buf;
> -         for (i = 0; i < 4; i++) {
> -diff --git a/server/reds.c b/server/reds.c
> -index 30d0652..8c80eb6 100644
> ---- a/server/reds.c
> -+++ b/server/reds.c
> -@@ -795,6 +795,7 @@ static SpiceCharDeviceMsgToClient *vdi_port_read_one_msg_from_device(SpiceCharDe
> -             }
> -             state->message_recive_len = state->vdi_chunk_header.size;
> -             state->read_state = VDI_PORT_READ_STATE_GET_BUFF;
> -+            /* fallthrough */
> -         case VDI_PORT_READ_STATE_GET_BUFF: {
> -             if (!(state->current_read_buf = vdi_port_read_buf_get())) {
> -                 return NULL;
> -@@ -806,6 +807,7 @@ static SpiceCharDeviceMsgToClient *vdi_port_read_one_msg_from_device(SpiceCharDe
> -             state->message_recive_len -= state->recive_len;
> -             state->read_state = VDI_PORT_READ_STATE_READ_DATA;
> -         }
> -+            /* fallthrough */
> -         case VDI_PORT_READ_STATE_READ_DATA:
> -             n = sif->read(vdagent, state->recive_pos, state->recive_len);
> -             if (!n) {
> ---
> -2.7.4
> -
> diff --git a/recipes-support/spice/files/build-allow-separated-src-and-build-dirs.patch b/recipes-support/spice/files/build-allow-separated-src-and-build-dirs.patch
> deleted file mode 100644
> index 9cbbff9..0000000
> --- a/recipes-support/spice/files/build-allow-separated-src-and-build-dirs.patch
> +++ /dev/null
> @@ -1,62 +0,0 @@
> -From 7d0d0ff080b159e647ebb26c337cb75314d64b52 Mon Sep 17 00:00:00 2001
> -From: Mark Asselstine <mark.asselstine@windriver.com>
> -Date: Thu, 1 May 2014 12:09:16 -0400
> -Subject: [PATCH] build: allow separated src and build dirs
> -
> -We need to expland the list of include dirs to include the build dir since
> -generated files will be created there instead of in the src dir.
> -
> -We also don't want to force using $srcdir for generated files as this will
> -allow them to be created in the build dir. We account for the slight
> -deviation in the generated files with expanded include paths.
> -
> -Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
> ----
> - configure.ac | 2 +-
> - spice-common/common/Makefile.am | 14 +++++++-------
> - 2 file changed, 8 insertions(+), 8 deletions(-)
> -
> -diff --git a/configure.ac b/configure.ac
> -index edda8e9..9151fcb 100644
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -165,7 +165,7 @@ dnl =========================================================================
> - dnl Check deps
> -
> - AC_CONFIG_SUBDIRS([spice-common])
> --COMMON_CFLAGS='-I ${top_srcdir}/spice-common/ -I ${top_srcdir}/spice-common/spice-protocol/'
> -+COMMON_CFLAGS='-I ${top_srcdir}/spice-common/ -I ${top_srcdir}/spice-common/common/ -I ${top_srcdir}/spice-common/spice-protocol/ -I ${top_builddir}/spice-common/'
> - AC_SUBST(COMMON_CFLAGS)
> -
> - AC_CHECK_LIBM
> -diff --git a/spice-common/common/Makefile.am b/spice-common/common/Makefile.am
> -index 45568c6..4c65ac4 100644
> ---- a/spice-common/common/Makefile.am
> -+++ b/spice-common/common/Makefile.am
> -@@ -2,16 +2,16 @@ NULL =
> -
> - # Avoid need for python(pyparsing) by end users
> - CLIENT_MARSHALLERS =					\
> --	$(srcdir)/generated_client_demarshallers.c	\
> --	$(srcdir)/generated_client_demarshallers1.c	\
> --	$(srcdir)/generated_client_marshallers.c	\
> --	$(srcdir)/generated_client_marshallers1.c	\
> -+	generated_client_demarshallers.c	\
> -+	generated_client_demarshallers1.c	\
> -+	generated_client_marshallers.c	\
> -+	generated_client_marshallers1.c	\
> - 	$(NULL)
> -
> - SERVER_MARSHALLERS =					\
> --	$(srcdir)/generated_server_demarshallers.c	\
> --	$(srcdir)/generated_server_marshallers.c	\
> --	$(srcdir)/generated_server_marshallers.h	\
> -+	generated_server_demarshallers.c	\
> -+	generated_server_marshallers.c	\
> -+	generated_server_marshallers.h	\
> - 	$(NULL)
> -
> - BUILT_SOURCES = $(CLIENT_MARSHALLERS) $(SERVER_MARSHALLERS) $(top_srcdir)/spice-protocol/spice/enums.h
> ---
> -1.8.3.2
> -
> diff --git a/recipes-support/spice/files/configure.ac-add-subdir-objects-to-AM_INIT_AUTOMAKE.patch b/recipes-support/spice/files/configure.ac-add-subdir-objects-to-AM_INIT_AUTOMAKE.patch
> deleted file mode 100644
> index 323ef52..0000000
> --- a/recipes-support/spice/files/configure.ac-add-subdir-objects-to-AM_INIT_AUTOMAKE.patch
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -From 36efb79076420975f7fa7aa0b03a1fc282291b05 Mon Sep 17 00:00:00 2001
> -From: Mark Asselstine <mark.asselstine@windriver.com>
> -Date: Tue, 25 Mar 2014 15:23:25 -0400
> -Subject: [PATCH] configure.ac: add subdir-objects to AM_INIT_AUTOMAKE
> -
> -Without this you will get subdir-objects error which will cause
> -autoreconf to complete successfully.
> -
> -Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
> ----
> - spice-common/configure.ac | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/spice-common/configure.ac b/spice-common/configure.ac
> -index b5cb960..78f1360 100644
> ---- a/spice-common/configure.ac
> -+++ b/spice-common/configure.ac
> -@@ -13,7 +13,7 @@ AC_CONFIG_AUX_DIR([build-aux])
> - m4_ifdef([AM_PROG_AR], [AM_PROG_AR])
> -
> - # Checks for programs
> --AM_INIT_AUTOMAKE([1.11 dist-xz no-dist-gzip tar-ustar foreign -Wall -Werror])
> -+AM_INIT_AUTOMAKE([1.11 dist-xz no-dist-gzip tar-ustar foreign subdir-objects -Wall -Werror])
> - AM_MAINTAINER_MODE
> - AM_SILENT_RULES([yes])
> - LT_INIT
> ---
> -1.8.3.2
> -
> diff --git a/recipes-support/spice/files/spice-fix-CVE-2013-4282.patch b/recipes-support/spice/files/spice-fix-CVE-2013-4282.patch
> deleted file mode 100644
> index 1a00a85..0000000
> --- a/recipes-support/spice/files/spice-fix-CVE-2013-4282.patch
> +++ /dev/null
> @@ -1,100 +0,0 @@
> -Fix buffer overflow when decrypting client SPICE ticket
> -
> -commit 8af619009660b24e0b41ad26b30289eea288fcc2     upstream
> -
> -reds_handle_ticket uses a fixed size 'password' buffer for the decrypted
> -password whose size is SPICE_MAX_PASSWORD_LENGTH. However,
> -RSA_private_decrypt which we call for the decryption expects the
> -destination buffer to be at least RSA_size(link->tiTicketing.rsa)
> -bytes long. On my spice-server build, SPICE_MAX_PASSWORD_LENGTH
> -is 60 while RSA_size() is 128, so we end up overflowing 'password'
> -when using long passwords (this was reproduced using the string:
> -'fullscreen=1proxy=#enter proxy here; e.g spice_proxy = http://[proxy]:[port]'
> -as a password).
> -
> -When the overflow occurs, QEMU dies with:
> -*** stack smashing detected ***: qemu-system-x86_64 terminated
> -
> -This commit ensures we use a corectly sized 'password' buffer,
> -and that it's correctly nul-terminated so that we can use strcmp
> -instead of strncmp. To keep using strncmp, we'd need to figure out
> -which one of 'password' and 'taTicket.password' is the smaller buffer,
> -and use that size.
> -
> -This fixes rhbz#999839
> -diff --git a/server/reds.c b/server/reds.c
> -index 30d0652..6f262b0 100644
> ---- a/server/reds.c
> -+++ b/server/reds.c
> -@@ -1931,39 +1931,59 @@ static void reds_handle_link(RedLinkInfo *link)
> - static void reds_handle_ticket(void *opaque)
> - {
> -     RedLinkInfo *link = (RedLinkInfo *)opaque;
> --    char password[SPICE_MAX_PASSWORD_LENGTH];
> -+    char *password;
> -     time_t ltime;
> -+    int password_size;
> -
> -     //todo: use monotonic time
> -     time(&ltime);
> --    RSA_private_decrypt(link->tiTicketing.rsa_size,
> --                        link->tiTicketing.encrypted_ticket.encrypted_data,
> --                        (unsigned char *)password, link->tiTicketing.rsa, RSA_PKCS1_OAEP_PADDING);
> -+    if (RSA_size(link->tiTicketing.rsa) < SPICE_MAX_PASSWORD_LENGTH) {
> -+        spice_warning("RSA modulus size is smaller than SPICE_MAX_PASSWORD_LENGTH (%d < %d), "
> -+                      "SPICE ticket sent from client may be truncated",
> -+                      RSA_size(link->tiTicketing.rsa), SPICE_MAX_PASSWORD_LENGTH);
> -+    }
> -+
> -+    password = g_malloc0(RSA_size(link->tiTicketing.rsa) + 1);
> -+    password_size = RSA_private_decrypt(link->tiTicketing.rsa_size,
> -+                                        link->tiTicketing.encrypted_ticket.encrypted_data,
> -+                                        (unsigned char *)password,
> -+                                        link->tiTicketing.rsa,
> -+                                        RSA_PKCS1_OAEP_PADDING);
> -+    if (password_size == -1) {
> -+        spice_warning("failed to decrypt RSA encrypted password: %s",
> -+                      ERR_error_string(ERR_get_error(), NULL));
> -+        goto error;
> -+    }
> -+    password[password_size] = '\0';
> -
> -     if (ticketing_enabled && !link->skip_auth) {
> -         int expired =  taTicket.expiration_time < ltime;
> -
> -         if (strlen(taTicket.password) == 0) {
> --            reds_send_link_result(link, SPICE_LINK_ERR_PERMISSION_DENIED);
> -             spice_warning("Ticketing is enabled, but no password is set. "
> --                        "please set a ticket first");
> --            reds_link_free(link);
> --            return;
> -+                          "please set a ticket first");
> -+            goto error;
> -         }
> -
> --        if (expired || strncmp(password, taTicket.password, SPICE_MAX_PASSWORD_LENGTH) != 0) {
> -+        if (expired || strcmp(password, taTicket.password) != 0) {
> -             if (expired) {
> -                 spice_warning("Ticket has expired");
> -             } else {
> -                 spice_warning("Invalid password");
> -             }
> --            reds_send_link_result(link, SPICE_LINK_ERR_PERMISSION_DENIED);
> --            reds_link_free(link);
> --            return;
> -+            goto error;
> -         }
> -     }
> -
> -     reds_handle_link(link);
> -+    goto end;
> -+
> -+error:
> -+    reds_send_link_result(link, SPICE_LINK_ERR_PERMISSION_DENIED);
> -+    reds_link_free(link);
> -+
> -+end:
> -+    g_free(password);
> - }
> -
> - static inline void async_read_clear_handlers(AsyncRead *obj)
> diff --git a/recipes-support/spice/spice_git.bb b/recipes-support/spice/spice_git.bb
> deleted file mode 100644
> index c0fdd9c..0000000
> --- a/recipes-support/spice/spice_git.bb
> +++ /dev/null
> @@ -1,79 +0,0 @@
> -#
> -# Copyright (C) 2013 Wind River Systems, Inc.
> -#
> -
> -SUMMARY = "Simple Protocol for Independent Computing Environments"
> -DESCRIPTION = "SPICE (the Simple Protocol for Independent Computing \
> -Environments) is a remote-display system built for virtual \
> -environments which allows users to view a computing 'desktop' \
> -environment - not only on its computer-server machine, but also from \
> -anywhere on the Internet and using a wide variety of machine \
> -architectures."
> -
> -LICENSE = "BSD & LGPLv2.1+"
> -LIC_FILES_CHKSUM = "file://COPYING;md5=4fbd65380cdd255951079008b364516c"
> -
> -PR = "r0"
> -PV = "0.12.4"
> -
> -# Actual versions based on the checkouts below
> -# spice = "0.12.4"
> -# common = "0.12.6"
> -# protocol = "0.12.6"
> -SRCREV_spice = "b270fb010a3ddb432dfe6b15e4bdffa6ac086cd0"
> -SRCREV_spice-common = "fe93908238196bd632287fc9875e6f2e11105d04"
> -SRCREV_spice-protocol = "784407f248e7f99d2bfcc9368f9acd1efb2b9617"
> -
> -SRCREV_FORMAT = "spice_spice-common_spice-protocol"
> -
> -SRC_URI = "git://anongit.freedesktop.org/spice/spice;name=spice \
> -           git://anongit.freedesktop.org/spice/spice-common;destsuffix=git/spice-common;name=spice-common \
> -           git://anongit.freedesktop.org/spice/spice-protocol;destsuffix=git/spice-common/spice-protocol;name=spice-protocol \
> -          "
> -
> -SRC_URI += " \
> -        file://spice-fix-CVE-2013-4282.patch \
> -        file://configure.ac-add-subdir-objects-to-AM_INIT_AUTOMAKE.patch \
> -        file://build-allow-separated-src-and-build-dirs.patch \
> -        file://0001-red_parse_qxl-Fix-BITMAP_FMT_IS_RGB-defined-but-not-.patch \
> -        file://0001-Use-PRI-macros-in-printf-to-keep-compatibility-betwe.patch \
> -        file://Fix-build-issues-with-gcc-7.patch \
> -        file://CVE-2017-7506-1.patch \
> -        file://CVE-2017-7506-2.patch \
> -        file://CVE-2017-7506-3.patch \
> -        "
> -
> -S = "${WORKDIR}/git"
> -
> -inherit autotools gettext pythonnative python-dir pkgconfig
> -
> -DEPENDS += "python-native celt051 python-pyparsing jpeg pixman alsa-lib glib-2.0"
> -
> -export PYTHON="${STAGING_BINDIR_NATIVE}/python-native/python"
> -export PYTHONPATH="${PKG_CONFIG_SYSROOT_DIR}${libdir}/python2.7/site-packages"
> -
> -PACKAGECONFIG ?= "sasl"
> -
> -PACKAGECONFIG[smartcard] = "--enable-smartcard,--disable-smartcard,libcacard,"
> -PACKAGECONFIG[sasl] = "--with-sasl,--without-sasl,cyrus-sasl,"
> -PACKAGECONFIG[client] = "--enable-client,--disable-client,,"
> -PACKAGECONFIG[gui] = "--enable-gui,--disable-gui,,"
> -PACKAGECONFIG[opengl] = "--enable-opengl,--disable-opengl,,"
> -PACKAGECONFIG[xinerama] = "--enable-xinerama,--disable-xinerama,libxinerama,"
> -
> -PACKAGES =+ "${PN}-protocol"
> -LICENSE_${PN}-protocol = "BSD"
> -FILES_${PN}-protocol += "${includedir}/spice-1"
> -FILES_${PN}-protocol += "${datadir}/pkgconfig"
> -
> -do_configure_prepend() {
> -	mkdir -p ${S}/spice-common/spice-protocol/m4
> -}
> -
> -do_install_append() {
> -	cd ${B}/spice-common/spice-protocol
> -	oe_runmake DESTDIR="${D}" install
> -	cd -
> -}
> -
> -COMPATIBLE_HOST = '(x86_64|i.86).*-linux'
> 


