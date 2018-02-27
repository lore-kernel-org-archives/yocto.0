Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83488E00E88; Tue, 27 Feb 2018 15:00:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TEQF_USR_MSGID_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 TEQF_USR_MSGID_HEX To and from user nearly same + unusual message
	ID
X-Greylist: delayed 121 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Feb 2018 15:00:15 PST
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E8C7E00843
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 15:00:15 -0800 (PST)
Received: from [10.175.196.237] ([37.123.169.62]) by cmsmtp with ESMTPA
	id qoCKeul7eB6PDqoCKez8dk; Tue, 27 Feb 2018 23:58:12 +0100
To: yocto@yoctoproject.org
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <4be9ce77-2cd0-868b-cecd-ad01f0b871c6@emagii.com>
Date: Tue, 27 Feb 2018 23:58:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfO1aJZNCttucyTnrbgP8LFH7sLXB+AAxBB9iyZfKpsjXMC6oG9+Aft7x09jRdETfKt0O3HO1BH/fcZPgqReoLl4PgWuMyggPxnYWXofwezgm5NMAUcJ/
	cIOQ4IiSRge8RubNKx/eIaZ6/XdlB17/lxgbrzPg/5tJcJjAzQNnVMM9
Subject: [PATCH] hostname.sh: remove warning for bashism
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
X-List-Received-Date: Tue, 27 Feb 2018 23:00:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

The use of the environment variable HOSTNAME, triggers
the checkbashisms script, so change HOSTNAME to LOCALHOST

Signed-off-by: Ulf Samuelsson <ulf@emagii.com>
---
  meta/recipes-core/initscripts/initscripts-1.0/hostname.sh | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/initscripts/initscripts-1.0/hostname.sh 
b/meta/recipes-core/initscripts/initscripts-1.0/hostname.sh
index 95287cc..f4ba2b8 100755
--- a/meta/recipes-core/initscripts/initscripts-1.0/hostname.sh
+++ b/meta/recipes-core/initscripts/initscripts-1.0/hostname.sh
@@ -7,7 +7,7 @@
  # Default-Stop:
  # Short-Description: Set hostname based on /etc/hostname
  ### END INIT INFO
-HOSTNAME=$(/bin/hostname)
+LOCALHOST=$(/bin/hostname)

  hostname -b -F /etc/hostname 2> /dev/null
  if [ $? -eq 0 ]; then
@@ -17,6 +17,6 @@ fi
  # Busybox hostname doesn't support -b so we need implement it on our own
  if [ -f /etc/hostname ];then
  	hostname `cat /etc/hostname`
-elif [ -z "$HOSTNAME" -o "$HOSTNAME" = "(none)" -o ! -z "`echo 
$HOSTNAME | sed -n '/^[0-9]*\.[0-9].*/p'`" ] ; then
+elif [ -z "$LOCALHOST" -o "$LOCALHOST" = "(none)" -o ! -z "`echo 
$LOCALHOST | sed -n '/^[0-9]*\.[0-9].*/p'`" ] ; then
  	hostname localhost
  fi
-- 
1.9.1

