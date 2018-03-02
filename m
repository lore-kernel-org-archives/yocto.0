Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CAE7E00EAD; Thu,  1 Mar 2018 21:00:51 -0800 (PST)
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
	Thu, 01 Mar 2018 21:00:49 PST
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B427E00DC6
	for <yocto@lists.yoctoproject.org>;
	Thu,  1 Mar 2018 21:00:49 -0800 (PST)
Received: from [10.175.196.237] ([37.123.169.62]) by cmsmtp with ESMTPA
	id rcmLe1PwYB6PDrcmMe3zxZ; Fri, 02 Mar 2018 05:58:46 +0100
To: yocto@lists.yoctoproject.org
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <3f6ca937-14c5-ed81-c498-cf11ddf9810d@emagii.com>
Date: Fri, 2 Mar 2018 05:58:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfMYOy3fq6S8riZNoKia5niPsxbaAxvLjEwHfvr/HRob3KCJnC/rMELpKCl3C3Zm29vFg6jL+IoEEwcSsqjexfskFOMz5v8sGSX7K6WeqbaclVzEbmvp0
	5RUg2anV5IDTckX2CZhr1dRS/GHamgkmHxA2/TrMnP+kq5DWmV9/GqcRAQ6J0k7O8Bh6jWC5rPws8g==
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
X-List-Received-Date: Fri, 02 Mar 2018 05:00:51 -0000
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

