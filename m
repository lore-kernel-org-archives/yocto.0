Return-Path: <throos@amazon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F77C4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 09:50:45 +0000 (UTC)
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
 by mx.groups.io with SMTP id smtpd.web10.7840.1666259433710674175
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 02:50:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.de header.s=amazon201209 header.b=GSqAPccP;
 spf=pass (domain: amazon.de, ip: 52.95.48.154, mailfrom: prvs=2853493d9=throos@amazon.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1666259434; x=1697795434;
  h=from:to:cc:date:message-id:references:in-reply-to:
   mime-version:subject;
  bh=OBWhhaSlSbem6Oz5CaHyrWCi2qLfHAhv1Q5rXkjY0is=;
  b=GSqAPccPhJu9XEdW/WRdkVgso9gEXGgAoQBxpZtC0CimGYUTlGdwa2yp
   N63NdHcXqbyMuNzqmcjrSanLroNlY/OIkq/I6eZAvf8Tbsoh7Nt92yUyR
   0XDa1t8UCM2CR02viINftLypv/E+7870rytPJItxY6C+1vskplyI1kvzg
   w=;
Subject: AW: [yocto] devtool upgrade for go recipes with git "broken"
Thread-Topic: [yocto] devtool upgrade for go recipes with git "broken"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO email-inbound-relay-pdx-2a-m6i4x-83883bdb.us-west-2.amazon.com) ([10.43.8.2])
  by smtp-border-fw-6001.iad6.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 09:50:29 +0000
Received: from EX13D25EUC002.ant.amazon.com (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
	by email-inbound-relay-pdx-2a-m6i4x-83883bdb.us-west-2.amazon.com (Postfix) with ESMTPS id 58AFA6114C;
	Thu, 20 Oct 2022 09:50:27 +0000 (UTC)
Received: from EX19D016EUC003.ant.amazon.com (10.252.51.244) by
 EX13D25EUC002.ant.amazon.com (10.43.164.98) with Microsoft SMTP Server (TLS)
 id 15.0.1497.42; Thu, 20 Oct 2022 09:50:26 +0000
Received: from EX19D016EUC001.ant.amazon.com (10.252.51.169) by
 EX19D016EUC003.ant.amazon.com (10.252.51.244) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.15; Thu, 20 Oct 2022 09:50:25 +0000
Received: from EX19D016EUC001.ant.amazon.com ([fe80::997f:8b89:37cd:3dc9]) by
 EX19D016EUC001.ant.amazon.com ([fe80::997f:8b89:37cd:3dc9%3]) with mapi id
 15.02.1118.015; Thu, 20 Oct 2022 09:50:25 +0000
From: "Roos, Thomas" <throos@amazon.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Thread-Index: AQHY5GTr5j5Nvf1ZnEq1HtJaEKftBq4XBOiAgAAEheo=
Date: Thu, 20 Oct 2022 09:50:25 +0000
Message-ID: <28ffce86de204ea6969c325b97506001@amazon.de>
References: <1028eccc021a4bf5ab2520b3c4fb82a6@amazon.de>,<CANNYZj9O+UnNrdi1vU1LGw4GUDJRJW3FfGubRdjEp7VZHJZPxQ@mail.gmail.com>
In-Reply-To: <CANNYZj9O+UnNrdi1vU1LGw4GUDJRJW3FfGubRdjEp7VZHJZPxQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.43.164.90]
Content-Type: multipart/alternative;
	boundary="_000_28ffce86de204ea6969c325b97506001amazonde_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 09:50:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58374

--_000_28ffce86de204ea6969c325b97506001amazonde_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

yes, easy
- set the go-helloworld bb srcrev to an older rev - e.g:
SRCREV =3D "ad95e7f791d8e1e7e7ec7f7cedfc2f6b29f6c9e2"


"devtool upgrade go-helloworld"

INFO: Extracting upgraded version source...
Traceback (most recent call last):
  File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 567, =
in upgrade
    rev2, md5, sha256, srcbranch, srcsubdir2 =3D _extract_new_source(args.v=
ersion, srctree, args.no_patch,
  File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 183, =
in _extract_new_source
    __run('git checkout %s' % rev)
  File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 170, =
in __run
    return _run(cmd, srctree)
  File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 31, i=
n _run
    return bb.process.run('%s' % cmd, cwd=3Dcwd)
  File "/home/ubuntu/yocto/poky/bitbake/lib/bb/process.py", line 189, in run
    raise ExecutionError(cmd, pipe.returncode, stdout, stderr)
bb.process.ExecutionError: Execution of 'git checkout 2e68773dfca072cb81f21=
9fc3b97ad34fe9d9f94' failed with exit code 128:
fatal: reference is not a tree: 2e68773dfca072cb81f219fc3b97ad34fe9d9f94


During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/home/ubuntu/yocto/poky/scripts/devtool", line 338, in <module>
    ret =3D main()
  File "/home/ubuntu/yocto/poky/scripts/devtool", line 325, in main
    ret =3D args.func(args, config, basepath, workspace)
  File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 575, =
in upgrade
    _upgrade_error(e, recipedir, srctree, args.keep_failure)
  File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 134, =
in _upgrade_error
    _cleanup_on_error(rd, srctree)
  File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 126, =
in _cleanup_on_error
    if not len(os.listdir(rdp)):
FileNotFoundError: [Errno 2] No such file or directory: '/home/ubuntu/yocto=
/build/workspace/recipes'






________________________________
Von: Alexander Kanavin <alex.kanavin@gmail.com>
Gesendet: Donnerstag, 20. Oktober 2022 11:32:19
An: Roos, Thomas
Cc: yocto@lists.yoctoproject.org
Betreff: RE: [EXTERNAL][yocto] devtool upgrade for go recipes with git "bro=
ken"

CAUTION: This email originated from outside of the organization. Do not cli=
ck links or open attachments unless you can confirm the sender and know the=
 content is safe.



It helps if you show the exact error, and a way to reproduce this
using a minimal setup (ideally only poky).

Alex

On Thu, 20 Oct 2022 at 11:18, Thomas Roos via lists.yoctoproject.org
<throos=3Damazon.de@lists.yoctoproject.org> wrote:
>
> Hi,
> when doing a "devtool upgrade" for a recipe which inherits "go" and using=
 a SRC_URI to a git repo this will fail. Complaining that the git revision =
is "out of tree" - I found that the additional "src" folder inside the chec=
kout out sources is causing this problem and I wondering if this is necessa=
ry. I'm not a go programmer, but when changing this the recipe seems to pro=
duce the same result.
> I did change our go recipe to don't use this additional src folder by ove=
rwriting the go_do_upack and go_do_configure method. Here: https://github.c=
om/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7658bd1649350acaf=
/recipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856.0.bb
> Is this a bug or do anybody know why go use that additional src folder?
>
>
> Cheers,
> Thomas
>
>
>
>
> Amazon Web Services EMEA SARL
> 38 avenue John F. Kennedy, L-1855 Luxembourg
> Sitz der Gesellschaft: L-1855 Luxemburg
> eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
>
> Amazon Web Services EMEA SARL, Niederlassung Deutschland
> Marcel-Breuer-Str. 12, D-80807 Muenchen
> Sitz der Zweigniederlassung: Muenchen
> eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242240=
, USt-ID DE317013094
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58372): https://lists.yoctoproject.org/g/yocto/messag=
e/58372
> Mute This Topic: https://lists.yoctoproject.org/mt/94449982/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>



Amazon Web Services EMEA SARL
38 avenue John F. Kennedy, L-1855 Luxembourg
Sitz der Gesellschaft: L-1855 Luxemburg
eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284

Amazon Web Services EMEA SARL, Niederlassung Deutschland
Marcel-Breuer-Str. 12, D-80807 Muenchen
Sitz der Zweigniederlassung: Muenchen
eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242240, =
USt-ID DE317013094




--_000_28ffce86de204ea6969c325b97506001amazonde_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>yes, easy<br>
- set the go-helloworld bb srcrev to an older rev - e.g:<br>
<span>SRCREV =3D &quot;ad95e7f791d8e1e7e7ec7f7cedfc2f6b29f6c9e2&quot;</span=
><br>
<br>
</p>
<div>&quot;devtool upgrade go-helloworld&quot;<br>
<br>
<div>INFO: Extracting upgraded version source...<br>
Traceback (most recent call last):<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py&qu=
ot;, line 567, in upgrade<br>
&nbsp;&nbsp;&nbsp; rev2, md5, sha256, srcbranch, srcsubdir2 =3D _extract_ne=
w_source(args.version, srctree, args.no_patch,<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py&qu=
ot;, line 183, in _extract_new_source<br>
&nbsp;&nbsp;&nbsp; __run('git checkout %s' % rev)<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py&qu=
ot;, line 170, in __run<br>
&nbsp;&nbsp;&nbsp; return _run(cmd, srctree)<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py&qu=
ot;, line 31, in _run<br>
&nbsp;&nbsp;&nbsp; return bb.process.run('%s' % cmd, cwd=3Dcwd)<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/bitbake/lib/bb/process.py&quot;, =
line 189, in run<br>
&nbsp;&nbsp;&nbsp; raise ExecutionError(cmd, pipe.returncode, stdout, stder=
r)<br>
bb.process.ExecutionError: Execution of 'git checkout 2e68773dfca072cb81f21=
9fc3b97ad34fe9d9f94' failed with exit code 128:<br>
fatal: reference is not a tree: 2e68773dfca072cb81f219fc3b97ad34fe9d9f94<br>
<br>
<br>
During handling of the above exception, another exception occurred:<br>
<br>
Traceback (most recent call last):<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/devtool&quot;, line 338, =
in &lt;module&gt;<br>
&nbsp;&nbsp;&nbsp; ret =3D main()<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/devtool&quot;, line 325, =
in main<br>
&nbsp;&nbsp;&nbsp; ret =3D args.func(args, config, basepath, workspace)<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py&qu=
ot;, line 575, in upgrade<br>
&nbsp;&nbsp;&nbsp; _upgrade_error(e, recipedir, srctree, args.keep_failure)=
<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py&qu=
ot;, line 134, in _upgrade_error<br>
&nbsp;&nbsp;&nbsp; _cleanup_on_error(rd, srctree)<br>
&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py&qu=
ot;, line 126, in _cleanup_on_error<br>
&nbsp;&nbsp;&nbsp; if not len(os.listdir(rdp)):<br>
FileNotFoundError: [Errno 2] No such file or directory: '/home/ubuntu/yocto=
/build/workspace/recipes'<br>
<br>
</div>
<br>
<br>
<br>
</div>
<br>
<p></p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>Von:</b> Alexander Kanavin &l=
t;alex.kanavin@gmail.com&gt;<br>
<b>Gesendet:</b> Donnerstag, 20. Oktober 2022 11:32:19<br>
<b>An:</b> Roos, Thomas<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Betreff:</b> RE: [EXTERNAL][yocto] devtool upgrade for go recipes with g=
it &quot;broken&quot;</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">CAUTION: This email originated from outside of the=
 organization. Do not click links or open attachments unless you can confir=
m the sender and know the content is safe.<br>
<br>
<br>
<br>
It helps if you show the exact error, and a way to reproduce this<br>
using a minimal setup (ideally only poky).<br>
<br>
Alex<br>
<br>
On Thu, 20 Oct 2022 at 11:18, Thomas Roos via lists.yoctoproject.org<br>
&lt;throos=3Damazon.de@lists.yoctoproject.org&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt; when doing a &quot;devtool upgrade&quot; for a recipe which inherits &=
quot;go&quot; and using a SRC_URI to a git repo this will fail. Complaining=
 that the git revision is &quot;out of tree&quot; - I found that the additi=
onal &quot;src&quot; folder inside the checkout out sources is causing this
 problem and I wondering if this is necessary. I'm not a go programmer, but=
 when changing this the recipe seems to produce the same result.<br>
&gt; I did change our go recipe to don't use this additional src folder by =
overwriting the go_do_upack and go_do_configure method. Here:
<a href=3D"https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a9=
1b9703609d7658bd1649350acaf/recipes-support/amazon-ssm-agent/amazon-ssm-age=
nt_3.1.1856.0.bb">
https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7=
658bd1649350acaf/recipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856=
.0.bb</a><br>
&gt; Is this a bug or do anybody know why go use that additional src folder=
?<br>
&gt;<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Thomas<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Amazon Web Services EMEA SARL<br>
&gt; 38 avenue John F. Kennedy, L-1855 Luxembourg<br>
&gt; Sitz der Gesellschaft: L-1855 Luxemburg<br>
&gt; eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284<br>
&gt;<br>
&gt; Amazon Web Services EMEA SARL, Niederlassung Deutschland<br>
&gt; Marcel-Breuer-Str. 12, D-80807 Muenchen<br>
&gt; Sitz der Zweigniederlassung: Muenchen<br>
&gt; eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242=
240, USt-ID DE317013094<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#58372): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/58372">
https://lists.yoctoproject.org/g/yocto/message/58372</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94449982=
/1686489">https://lists.yoctoproject.org/mt/94449982/1686489</a><br>
&gt; Group Owner: yocto&#43;owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub">=
https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.com]<b=
r>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font>
<br><br><br>Amazon Web Services EMEA SARL
<br>38 avenue John F. Kennedy, L-1855 Luxembourg
<br>Sitz der Gesellschaft: L-1855 Luxemburg
<br>eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
<br>
<br>Amazon Web Services EMEA SARL, Niederlassung Deutschland
<br>Marcel-Breuer-Str. 12, D-80807 Muenchen
<br>Sitz der Zweigniederlassung: Muenchen
<br>eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 2422=
40, USt-ID DE317013094
<br><br><br>
</body>
</html>

--_000_28ffce86de204ea6969c325b97506001amazonde_--


