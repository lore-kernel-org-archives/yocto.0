Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41004E00D5F; Sun, 22 Sep 2019 07:59:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB0BDE00D51
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 07:59:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8MEwrJi027503
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 07:59:03 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 07:58:42 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:57:02 +0800
Message-ID: <1569164228-26934-10-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 9/15] openssh: port sshd_check_keys from oe-core
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
X-List-Received-Date: Sun, 22 Sep 2019 14:59:30 -0000
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../openssh/openssh/sshd_check_keys                | 78 ++++++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 recipes-connectivity/openssh/openssh/sshd_check_keys

diff --git a/recipes-connectivity/openssh/openssh/sshd_check_keys b/recipes-connectivity/openssh/openssh/sshd_check_keys
new file mode 100644
index 0000000..1931dc7
--- /dev/null
+++ b/recipes-connectivity/openssh/openssh/sshd_check_keys
@@ -0,0 +1,78 @@
+#! /bin/sh
+
+generate_key() {
+    local FILE=$1
+    local TYPE=$2
+    local DIR="$(dirname "$FILE")"
+
+    mkdir -p "$DIR"
+    ssh-keygen -q -f "${FILE}.tmp" -N '' -t $TYPE
+
+    # Atomically rename file public key
+    mv -f "${FILE}.tmp.pub" "${FILE}.pub"
+
+    # This sync does double duty: Ensuring that the data in the temporary
+    # private key file is on disk before the rename, and ensuring that the
+    # public key rename is completed before the private key rename, since we
+    # switch on the existence of the private key to trigger key generation.
+    # This does mean it is possible for the public key to exist, but be garbage
+    # but this is OK because in that case the private key won't exist and the
+    # keys will be regenerated.
+    #
+    # In the event that sync understands arguments that limit what it tries to
+    # fsync(), we provided them. If it does not, it will simply call sync()
+    # which is just as well
+    sync "${FILE}.pub" "$DIR" "${FILE}.tmp"
+
+    mv "${FILE}.tmp" "$FILE"
+
+    # sync to ensure the atomic rename is committed
+    sync "$DIR"
+}
+
+# /etc/default/ssh may set SYSCONFDIR and SSHD_OPTS
+if test -f /etc/default/ssh; then
+    . /etc/default/ssh
+fi
+
+[ -z "$SYSCONFDIR" ] && SYSCONFDIR=/etc/ssh
+mkdir -p $SYSCONFDIR
+
+# parse sshd options
+set -- ${SSHD_OPTS} --
+sshd_config=/etc/ssh/sshd_config
+while true ; do
+    case "$1" in
+    -f*) if [ "$1" = "-f" ] ; then
+            sshd_config="$2"
+            shift
+        else
+            sshd_config="${1#-f}"
+        fi
+        shift
+        ;;
+    --) shift; break;;
+    *) shift;;
+    esac
+done
+
+HOST_KEYS=$(sed -n 's/^[ \t]*HostKey[ \t]\+\(.*\)/\1/p' "${sshd_config}")
+[ -z "${HOST_KEYS}" ] && HOST_KEYS="$SYSCONFDIR/ssh_host_rsa_key $SYSCONFDIR/ssh_host_ecdsa_key $SYSCONFDIR/ssh_host_ed25519_key"
+
+for key in ${HOST_KEYS} ; do
+    [ -f $key ] && continue
+    case $key in
+    *_rsa_key)
+        echo "  generating ssh RSA host key..."
+        generate_key $key rsa
+        ;;
+    *_ecdsa_key)
+        echo "  generating ssh ECDSA host key..."
+        generate_key $key ecdsa
+        ;;
+    *_ed25519_key)
+        echo "  generating ssh ED25519 host key..."
+        generate_key $key ed25519
+        ;;
+    esac
+done
-- 
2.7.4


