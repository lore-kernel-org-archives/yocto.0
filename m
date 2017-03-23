Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0FA3E00A80; Thu, 23 Mar 2017 01:36:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.182 listed in dnsbl.sorbs.net]
Received: from mail-ot0-f182.google.com (mail-ot0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77A69E009A0
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 01:36:11 -0700 (PDT)
Received: by mail-ot0-f182.google.com with SMTP id i1so182785107ota.3
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 01:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=De8i5+8ao7dz2IDyqTDoZPgUrVZ3JW0B83mgTtU+ddg=;
	b=JodHmur6nHJIF8rwXZ3kMhYd2jttXrz0G40HimcegrTNSLlZlACHbkKEhKxIUfVMCd
	XfFh5yDeb7LrVmblpk90G83Q/y+HNVT9bKfeETMxwHQv/JCobSJTFlRaotiq2UnVdoCq
	BZtazuYD91WCFM3nzSXc9VLQCb7peo7IZO9Y4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=De8i5+8ao7dz2IDyqTDoZPgUrVZ3JW0B83mgTtU+ddg=;
	b=osAUR+FPpvyHQr+f5+3vo6wgU0eK7Tc4Ns3fOWX7zUlWYdrjVo4KeNcQIbPm/naTcr
	gAbTJuP5Hbi1ODQgTkPtevgWXNRiWIaGxy0nO9I1aZLsfeAX16F93mUaNtcZAOqlMdPw
	V+1rlwN2mf0HeIRPU59uIi0nQX6aaItNJeH2A+pa1nkCabhO5TO2NNYvoleVTPHOsySY
	G/tYEoNbRiEIZBiMh4IUkL26YQLZWAb2CzZT3s5Ie1wq+VD3/R6r2YeEOT1pcrOMehAW
	KMuibvwEfXN25Eu3dfFr+QA+30qrXX1QLDQFFADuoo6f1tlsFp8/YU5R0vTLrTxeWRHC
	BK4Q==
X-Gm-Message-State: AFeK/H3WhX8REFHxQnBLAtDRjb0zOveWCwghgMUtwP0JslZBA20SF9KNtgnyGuvBpfLM1etFgdC4D3YHp/fVrA==
X-Received: by 10.157.68.144 with SMTP id v16mr585597ote.237.1490258170798;
	Thu, 23 Mar 2017 01:36:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.183.10.162 with HTTP; Thu, 23 Mar 2017 01:36:10 -0700 (PDT)
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Thu, 23 Mar 2017 14:06:10 +0530
Message-ID: <CALDHXteLqNAHVw+QAkQhDA7VH8JhKxpe2ftJTwfWVXY6g_Yomw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: ERROR: libreoffice-5.0.5.2-r0 do_package
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
X-List-Received-Date: Thu, 23 Mar 2017 08:36:15 -0000
Content-Type: multipart/alternative; boundary=f4030435448ce4fb9b054b61c417

--f4030435448ce4fb9b054b61c417
Content-Type: text/plain; charset=UTF-8

Hi Everybody,

I am trying to build the libreoffice packages, but i am getting following
errors.


*ERROR: libreoffice-5.0.5.2-r0 do_package: QA Issue: File
'/usr/lib/libreoffice/share/extensions/mysql-connector-ooo/libmysqlclient_r.so'
from libreoffice was already stripped, this will prevent future debugging!
[already-stripped]*
WARNING: libreoffice-5.0.5.2-r0 do_package: libreoffice language file
pattern not found:  /usr/lib/libreoffice/share/template/%{1}


*ERROR: libreoffice-5.0.5.2-r0 do_package: Fatal QA errors found, failing
task.ERROR: libreoffice-5.0.5.2-r0 do_package: Function failed:
do_packageERROR: Logfile of failure stored in:
/home/kamama-yocto/yocto/poky/build/tmp/work/cortexa15hf-neon-poky-linux-gnueabi/libreoffice/5.0.5.2-r0/temp/log.do_package.23588*
*ERROR: Task
(/home/kamama-yocto/yocto/poky/meta-packages/meta-office/recipes-libreoffice/libreoffice/libreoffice.bb:do_package)
failed with exit code '1'*
NOTE: Tasks Summary: Attempted 8443 tasks of which 8385 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/kamama-yocto/yocto/poky/meta-packages/meta-office/recipes-libreoffice/libreoffice/libreoffice.bb:
do_package
Summary: There were 2 WARNING messages shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.


what is the issue and how to solve this ?


Best Regards,
Ravikiran

--f4030435448ce4fb9b054b61c417
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Everybody,<br><br></div>I am trying=
 to build the libreoffice packages, but i am getting following errors.<br><=
br><br><b>ERROR: libreoffice-5.0.5.2-r0 do_package: QA Issue: File &#39;/us=
r/lib/libreoffice/share/extensions/mysql-connector-ooo/libmysqlclient_r.so&=
#39; from libreoffice was already stripped, this will prevent future debugg=
ing! [already-stripped]</b><br>WARNING: libreoffice-5.0.5.2-r0 do_package: =
libreoffice language file pattern not found:=C2=A0 /usr/lib/libreoffice/sha=
re/template/%{1}<br><b>ERROR: libreoffice-5.0.5.2-r0 do_package: Fatal QA e=
rrors found, failing task.<br>ERROR: libreoffice-5.0.5.2-r0 do_package: Fun=
ction failed: do_package<br>ERROR: Logfile of failure stored in: /home/kama=
ma-yocto/yocto/poky/build/tmp/work/cortexa15hf-neon-poky-linux-gnueabi/libr=
eoffice/5.0.5.2-r0/temp/log.do_package.23588</b><br><b>ERROR: Task (/home/k=
amama-yocto/yocto/poky/meta-packages/meta-office/recipes-libreoffice/libreo=
ffice/libreoffice.bb:do_package) failed with exit code &#39;1&#39;</b><br>N=
OTE: Tasks Summary: Attempted 8443 tasks of which 8385 didn&#39;t need to b=
e rerun and 1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /home/kamama=
-yocto/yocto/poky/meta-packages/meta-office/recipes-libreoffice/libreoffice=
/libreoffice.bb:do_package<br>Summary: There were 2 WARNING messages shown.=
<br>Summary: There were 3 ERROR messages shown, returning a non-zero exit c=
ode.<br><br><br></div>what is the issue and how to solve this ?<br><br><br>=
</div>Best Regards,<br></div>Ravikiran<br></div>

--f4030435448ce4fb9b054b61c417--
