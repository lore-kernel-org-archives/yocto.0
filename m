Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DE8AE008CF; Tue, 11 Nov 2014 23:12:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B727E007C0
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 23:12:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sAC7CJ8E007847
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Nov 2014 23:12:19 -0800 (PST)
Received: from [128.224.162.187] (128.224.162.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Tue, 11 Nov 2014 23:12:19 -0800
Message-ID: <546308C7.2010906@windriver.com>
Date: Wed, 12 Nov 2014 15:14:15 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: Sergio Prado <sergiosiena@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CAKm6Z3U_M8J_8tL3awdEo4aFHmY5gQt5hMh5mxggAcLqXatKnw@mail.gmail.com>
In-Reply-To: <CAKm6Z3U_M8J_8tL3awdEo4aFHmY5gQt5hMh5mxggAcLqXatKnw@mail.gmail.com>
X-Originating-IP: [128.224.162.187]
Subject: Re: Bitbake bash completion
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
X-List-Received-Date: Wed, 12 Nov 2014 07:12:30 -0000
X-Groupsio-MsgNum: 22164
Content-Type: multipart/mixed; boundary="------------060906080704010503070302"

--------------060906080704010503070302
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Prado,

It's really a good idea. I've tried it out.

Attached is a patch to improve speed, accuracy and user experience.

Regards,
Chen Qi

On 11/12/2014 08:27 AM, Sergio Prado wrote:
> Hello all,
>
> I have just written a bitbake bash completion script so it could make
> my life easier when trying to discover a recipe name and bake it.
>
> https://github.com/sergioprado/bitbake-bash-completion
>
> It should complete all commands (bitbake 1.22.0), recipes and tasks.
>
> When running for the first time, it will execute "bitbake -e" to get
> the BBPATH variable and save it in a hidden file. It will use this
> file on subsequent executions.
>
> Feel free to try it and let me know if you find any bug or have
> suggestions on how to improve it.
>
> Thanks,
>
> Sergio Prado
> www.sergioprado.org
> https://twitter.com/sergioprado


--------------060906080704010503070302
Content-Type: text/x-patch;
	name="0001-Improve-speed-accuracy-and-user-experience.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-Improve-speed-accuracy-and-user-experience.patch"

From 40497abfe58313ed9171abc122bffe559ca85509 Mon Sep 17 00:00:00 2001
From: Chen Qi <Qi.Chen@windriver.com>
Date: Wed, 12 Nov 2014 02:06:49 -0500
Subject: [PATCH] Improve speed, accuracy and user experience

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 bitbake |   42 ++++++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/bitbake b/bitbake
index e904d97..63f2d52 100644
--- a/bitbake
+++ b/bitbake
@@ -9,7 +9,7 @@
 _bitbake()
 {
     local cur prev opts_short opts_long tasks bbdir bbfile recipes
-    local ui bblayers_conf bblayers_md5 bblayers_bbpath
+    local ui bblayers_conf bblayers_md5 bblayers_bbfile bblayers_recipes
 
     COMPREPLY=()
 
@@ -79,30 +79,40 @@ _bitbake()
 
     bblayers_conf="conf/bblayers.conf"
     bblayers_md5=".bblayers.conf.md5"
-    bblayers_bbpath=".bblayers.bbpath"
+    bblayers_bbfile=".bblayers.bbfile"
+    bblayers_recipes=".bblayers.recipes"
+
+    _parse_recipes () {
+	echo `bitbake -e | grep "^BBFILES=" | cut -d "=" -f 2 | sed -e 's/"//g'` > $bblayers_bbfile
+	 for bbfile_entry in `cat $bblayers_bbfile`; do
+	     if [ "${bbfile_entry%.bbappend}" = "${bbfile_entry}" ]; then
+		 echo $bbfile_entry
+	     fi
+	 done | while read recipe_path; do
+	     recipe="${recipe_path##*/}"
+	     recipe="${recipe%%_*.bb}"
+	     recipe="${recipe%%.bb}"
+	     if [ "$recipe" != "*" ]; then
+		 echo $recipe
+	     fi
+	 done > $bblayers_recipes
+    }
 
     if [ ! -e $bblayers_conf ]; then
         return 0;
     fi
 
+    if [ "$prev" = "bitbake" -a "$cur" = "" ]; then
+	_parse_recipes
+    fi
+
     md5sum --quiet --status -c $bblayers_md5 2>/dev/null
-    if [ $? != 0 -o ! -e $bblayers_bbpath ]; then
-         printf "\nReading BBPATH..."
+    if [ $? != 0 -o ! -e $bblayers_recipes ]; then
          md5sum $bblayers_conf > $bblayers_md5
-         echo `bitbake -e | grep "^BBPATH=" | cut -d "=" -f 2 | sed -e 's/^"//'  -e 's/"$//'` > $bblayers_bbpath
-         echo "done! Press TAB to continue..."
+	 _parse_recipes
     fi
 
-    for bbdir in `cat $bblayers_bbpath | sed s/:/\ /g`; do
-        for bbfile in `echo $bbdir/*/*/${cur}*.bb`; do
-            if [ -e $bbfile ]; then
-                bbfile=`basename $bbfile`
-                bbfile=${bbfile%%_*.bb}
-                bbfile=${bbfile%%.bb}
-                recipes="$recipes $bbfile"
-            fi
-        done
-    done
+    recipes=`cat $bblayers_recipes`
 
     COMPREPLY=( $(compgen -W "${recipes}" -- ${cur}) )
     return 0
-- 
1.7.9.5


--------------060906080704010503070302--
