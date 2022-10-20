Return-Path: <throos@amazon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2CEC4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 10:23:05 +0000 (UTC)
Received: from smtp-fw-2101.amazon.com (smtp-fw-2101.amazon.com [72.21.196.25])
 by mx.groups.io with SMTP id smtpd.web10.8040.1666261383624604020
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 03:23:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.de header.s=amazon201209 header.b=o+UL88vO;
 spf=pass (domain: amazon.de, ip: 72.21.196.25, mailfrom: prvs=2853493d9=throos@amazon.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1666261384; x=1697797384;
  h=from:to:cc:date:message-id:references:in-reply-to:
   mime-version:subject;
  bh=RyN91TtcmgA3u4rPjGEcTtL+YTjpIoCQZcYxwESFVVk=;
  b=o+UL88vOOwq7WZIfE3KvOGWh/oXSkouc/X/ZFHHgDiLLDgLhRhKK7fsT
   gJkrrsSzUTCRp67BeVBCNJghl22SiJYBlxjZpNGBfclUOmkck5ng2a0Sy
   bcdG/3/6g5kcN9f5I3MmJLCPLiHA/jaUMvt34TA0RzT0h4wLC5RO5Ohvn
   E=;
X-IronPort-AV: E=Sophos;i="5.95,198,1661817600"; 
   d="scan'208,217";a="254129480"
Subject: AW: [yocto] devtool upgrade for go recipes with git "broken"
Thread-Topic: [yocto] devtool upgrade for go recipes with git "broken"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-iad-1d-35b1f9a2.us-east-1.amazon.com) ([10.43.8.6])
  by smtp-border-fw-2101.iad2.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 10:23:00 +0000
Received: from EX13D36EUC001.ant.amazon.com (iad12-ws-svc-p26-lb9-vlan2.iad.amazon.com [10.40.163.34])
	by email-inbound-relay-iad-1d-35b1f9a2.us-east-1.amazon.com (Postfix) with ESMTPS id D81BC2033AA;
	Thu, 20 Oct 2022 10:22:59 +0000 (UTC)
Received: from EX19D016EUC001.ant.amazon.com (10.252.51.169) by
 EX13D36EUC001.ant.amazon.com (10.43.164.105) with Microsoft SMTP Server (TLS)
 id 15.0.1497.42; Thu, 20 Oct 2022 10:22:59 +0000
Received: from EX19D016EUC001.ant.amazon.com (10.252.51.169) by
 EX19D016EUC001.ant.amazon.com (10.252.51.169) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.15; Thu, 20 Oct 2022 10:22:59 +0000
Received: from EX19D016EUC001.ant.amazon.com ([fe80::997f:8b89:37cd:3dc9]) by
 EX19D016EUC001.ant.amazon.com ([fe80::997f:8b89:37cd:3dc9%3]) with mapi id
 15.02.1118.015; Thu, 20 Oct 2022 10:22:59 +0000
From: "Roos, Thomas" <throos@amazon.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Thread-Index: AQHY5GTr5j5Nvf1ZnEq1HtJaEKftBq4XBOiAgAAEheqAAAJSAIAAAOzQgAACtYCAAANV6Q==
Date: Thu, 20 Oct 2022 10:22:58 +0000
Message-ID: <840aa137ef2d460a9a6136eb5e725930@amazon.de>
References: <1028eccc021a4bf5ab2520b3c4fb82a6@amazon.de>
 <CANNYZj9O+UnNrdi1vU1LGw4GUDJRJW3FfGubRdjEp7VZHJZPxQ@mail.gmail.com>
 <28ffce86de204ea6969c325b97506001@amazon.de>
 <CANNYZj_GgqzaS22upMbw38sje5_gYT-w7giwSyZxLCfHdZ074A@mail.gmail.com>
 <a79184da26314c388bc4733b516e47a5@amazon.de>,<CANNYZj_xvKFqdX1v=p3z7AeWcvQcv20T59j=Ch1e4Eu7tqqPCA@mail.gmail.com>
In-Reply-To: <CANNYZj_xvKFqdX1v=p3z7AeWcvQcv20T59j=Ch1e4Eu7tqqPCA@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.43.166.209]
Content-Type: multipart/alternative;
	boundary="_000_840aa137ef2d460a9a6136eb5e725930amazonde_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 10:23:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58378

--_000_840aa137ef2d460a9a6136eb5e725930amazonde_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

sure, but may this src folder is necessary for something? Some go conventio=
n I don't know about...

________________________________
Von: Alexander Kanavin <alex.kanavin@gmail.com>
Gesendet: Donnerstag, 20. Oktober 2022 12:09:47
An: Roos, Thomas
Cc: yocto@lists.yoctoproject.org
Betreff: RE: [EXTERNAL][yocto] devtool upgrade for go recipes with git "bro=
ken"

CAUTION: This email originated from outside of the organization. Do not cli=
ck links or open attachments unless you can confirm the sender and know the=
 content is safe.



Can you propose a patch to core?

Alex

On Thu, 20 Oct 2022 at 12:05, Roos, Thomas <throos@amazon.de> wrote:
>
> yes, I already did this - it's because that go.bbclass is spangly using a=
 subdir called "src" and that will break the devtool check for upgrades mec=
hanism because it's not looking into a src subdir. So git will fail checkou=
t anything in the parent dir "reference is not a tree"
>
> This simple change in the go.bbclass fix it - but I don't know if that ad=
ditional src dir is somehow necessary:
>
>
> # src folder will break devtool upgrade
> python go_do_unpack() {
>     src_uri =3D (d.getVar('SRC_URI') or "").split()
>     if len(src_uri) =3D=3D 0:
>         return
>
>     fetcher =3D bb.fetch2.Fetch(src_uri, d)
>     for url in fetcher.urls:
>         if fetcher.ud[url].type =3D=3D 'git':
>             if fetcher.ud[url].parm.get('destsuffix') is None:
>                 s_dirname =3D os.path.basename(d.getVar('S'))
> #cause problems                fetcher.ud[url].parm['destsuffix'] =3D os.=
path.join(s_dirname, 'src', d.getVar('GO_IMPORT')) + '/'
> #FIX
>                 fetcher.ud[url].parm['destsuffix'] =3D os.path.join(s_dir=
name, '', d.getVar('GO_IMPORT')) + '/'
> #FIX
>     fetcher.unpack(d.getVar('WORKDIR'))
> }
>
> # src folder will break devtool upgrade
> go_do_configure() {
> #cause problems      ln -snf ${S}/src ${B}/
> #FIX
>     ln -snf ${S} ${B}/
> #FIX
> }
>
>
> ________________________________
> Von: Alexander Kanavin <alex.kanavin@gmail.com>
> Gesendet: Donnerstag, 20. Oktober 2022 11:56:48
> An: Roos, Thomas
> Cc: yocto@lists.yoctoproject.org
> Betreff: RE: [EXTERNAL][yocto] devtool upgrade for go recipes with git "b=
roken"
>
> CAUTION: This email originated from outside of the organization. Do not c=
lick links or open attachments unless you can confirm the sender and know t=
he content is safe.
>
>
>
> Thanks, I do not have a quick answer to this, but would appreciate if
> you can dig deeper into the issue.
>
> Alex
>
> On Thu, 20 Oct 2022 at 11:50, Roos, Thomas <throos@amazon.de> wrote:
> >
> > yes, easy
> > - set the go-helloworld bb srcrev to an older rev - e.g:
> > SRCREV =3D "ad95e7f791d8e1e7e7ec7f7cedfc2f6b29f6c9e2"
> >
> > "devtool upgrade go-helloworld"
> >
> > INFO: Extracting upgraded version source...
> > Traceback (most recent call last):
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 5=
67, in upgrade
> >     rev2, md5, sha256, srcbranch, srcsubdir2 =3D _extract_new_source(ar=
gs.version, srctree, args.no_patch,
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 1=
83, in _extract_new_source
> >     __run('git checkout %s' % rev)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 1=
70, in __run
> >     return _run(cmd, srctree)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 3=
1, in _run
> >     return bb.process.run('%s' % cmd, cwd=3Dcwd)
> >   File "/home/ubuntu/yocto/poky/bitbake/lib/bb/process.py", line 189, i=
n run
> >     raise ExecutionError(cmd, pipe.returncode, stdout, stderr)
> > bb.process.ExecutionError: Execution of 'git checkout 2e68773dfca072cb8=
1f219fc3b97ad34fe9d9f94' failed with exit code 128:
> > fatal: reference is not a tree: 2e68773dfca072cb81f219fc3b97ad34fe9d9f94
> >
> >
> > During handling of the above exception, another exception occurred:
> >
> > Traceback (most recent call last):
> >   File "/home/ubuntu/yocto/poky/scripts/devtool", line 338, in <module>
> >     ret =3D main()
> >   File "/home/ubuntu/yocto/poky/scripts/devtool", line 325, in main
> >     ret =3D args.func(args, config, basepath, workspace)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 5=
75, in upgrade
> >     _upgrade_error(e, recipedir, srctree, args.keep_failure)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 1=
34, in _upgrade_error
> >     _cleanup_on_error(rd, srctree)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 1=
26, in _cleanup_on_error
> >     if not len(os.listdir(rdp)):
> > FileNotFoundError: [Errno 2] No such file or directory: '/home/ubuntu/y=
octo/build/workspace/recipes'
> >
> >
> >
> >
> >
> > ________________________________
> > Von: Alexander Kanavin <alex.kanavin@gmail.com>
> > Gesendet: Donnerstag, 20. Oktober 2022 11:32:19
> > An: Roos, Thomas
> > Cc: yocto@lists.yoctoproject.org
> > Betreff: RE: [EXTERNAL][yocto] devtool upgrade for go recipes with git =
"broken"
> >
> > CAUTION: This email originated from outside of the organization. Do not=
 click links or open attachments unless you can confirm the sender and know=
 the content is safe.
> >
> >
> >
> > It helps if you show the exact error, and a way to reproduce this
> > using a minimal setup (ideally only poky).
> >
> > Alex
> >
> > On Thu, 20 Oct 2022 at 11:18, Thomas Roos via lists.yoctoproject.org
> > <throos=3Damazon.de@lists.yoctoproject.org> wrote:
> > >
> > > Hi,
> > > when doing a "devtool upgrade" for a recipe which inherits "go" and u=
sing a SRC_URI to a git repo this will fail. Complaining that the git revis=
ion is "out of tree" - I found that the additional "src" folder inside the =
checkout out sources is causing this problem and I wondering if this is nec=
essary. I'm not a go programmer, but when changing this the recipe seems to=
 produce the same result.
> > > I did change our go recipe to don't use this additional src folder by=
 overwriting the go_do_upack and go_do_configure method. Here: https://gith=
ub.com/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7658bd1649350=
acaf/recipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856.0.bb
> > > Is this a bug or do anybody know why go use that additional src folde=
r?
> > >
> > >
> > > Cheers,
> > > Thomas
> > >
> > >
> > >
> > >
> > > Amazon Web Services EMEA SARL
> > > 38 avenue John F. Kennedy, L-1855 Luxembourg
> > > Sitz der Gesellschaft: L-1855 Luxemburg
> > > eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
> > >
> > > Amazon Web Services EMEA SARL, Niederlassung Deutschland
> > > Marcel-Breuer-Str. 12, D-80807 Muenchen
> > > Sitz der Zweigniederlassung: Muenchen
> > > eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 24=
2240, USt-ID DE317013094
> > >
> > >
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#58372): https://lists.yoctoproject.org/g/yocto/me=
ssage/58372
> > > Mute This Topic: https://lists.yoctoproject.org/mt/94449982/1686489
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanav=
in@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
> >
> >
> >
> > Amazon Web Services EMEA SARL
> > 38 avenue John F. Kennedy, L-1855 Luxembourg
> > Sitz der Gesellschaft: L-1855 Luxemburg
> > eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
> >
> > Amazon Web Services EMEA SARL, Niederlassung Deutschland
> > Marcel-Breuer-Str. 12, D-80807 Muenchen
> > Sitz der Zweigniederlassung: Muenchen
> > eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 2422=
40, USt-ID DE317013094
> >
> >
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



Amazon Web Services EMEA SARL
38 avenue John F. Kennedy, L-1855 Luxembourg
Sitz der Gesellschaft: L-1855 Luxemburg
eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284

Amazon Web Services EMEA SARL, Niederlassung Deutschland
Marcel-Breuer-Str. 12, D-80807 Muenchen
Sitz der Zweigniederlassung: Muenchen
eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242240, =
USt-ID DE317013094




--_000_840aa137ef2d460a9a6136eb5e725930amazonde_
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
<p>sure, but may this src folder is necessary for something? Some go conven=
tion I don't know about...<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>Von:</b> Alexander Kanavin &l=
t;alex.kanavin@gmail.com&gt;<br>
<b>Gesendet:</b> Donnerstag, 20. Oktober 2022 12:09:47<br>
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
Can you propose a patch to core?<br>
<br>
Alex<br>
<br>
On Thu, 20 Oct 2022 at 12:05, Roos, Thomas &lt;throos@amazon.de&gt; wrote:<=
br>
&gt;<br>
&gt; yes, I already did this - it's because that go.bbclass is spangly usin=
g a subdir called &quot;src&quot; and that will break the devtool check for=
 upgrades mechanism because it's not looking into a src subdir. So git will=
 fail checkout anything in the parent dir &quot;reference
 is not a tree&quot;<br>
&gt;<br>
&gt; This simple change in the go.bbclass fix it - but I don't know if that=
 additional src dir is somehow necessary:<br>
&gt;<br>
&gt;<br>
&gt; # src folder will break devtool upgrade<br>
&gt; python go_do_unpack() {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; src_uri =3D (d.getVar('SRC_URI') or &quot;&quo=
t;).split()<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; if len(src_uri) =3D=3D 0:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; fetcher =3D bb.fetch2.Fetch(src_uri, d)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; for url in fetcher.urls:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if fetcher.ud[url].typ=
e =3D=3D 'git':<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; if fetcher.ud[url].parm.get('destsuffix') is None:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; s_dirname =3D os.path.basename(d.getVar('S'))<br>
&gt; #cause problems&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fetcher.ud[url].parm['destsuffix'] =3D =
os.path.join(s_dirname, 'src', d.getVar('GO_IMPORT')) &#43; '/'<br>
&gt; #FIX<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; fetcher.ud[url].parm['destsuffix'] =3D os.path.jo=
in(s_dirname, '', d.getVar('GO_IMPORT')) &#43; '/'<br>
&gt; #FIX<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; fetcher.unpack(d.getVar('WORKDIR'))<br>
&gt; }<br>
&gt;<br>
&gt; # src folder will break devtool upgrade<br>
&gt; go_do_configure() {<br>
&gt; #cause problems&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln -snf ${S}/src ${B}/<b=
r>
&gt; #FIX<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; ln -snf ${S} ${B}/<br>
&gt; #FIX<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; ________________________________<br>
&gt; Von: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; Gesendet: Donnerstag, 20. Oktober 2022 11:56:48<br>
&gt; An: Roos, Thomas<br>
&gt; Cc: yocto@lists.yoctoproject.org<br>
&gt; Betreff: RE: [EXTERNAL][yocto] devtool upgrade for go recipes with git=
 &quot;broken&quot;<br>
&gt;<br>
&gt; CAUTION: This email originated from outside of the organization. Do no=
t click links or open attachments unless you can confirm the sender and kno=
w the content is safe.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks, I do not have a quick answer to this, but would appreciate if<=
br>
&gt; you can dig deeper into the issue.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Thu, 20 Oct 2022 at 11:50, Roos, Thomas &lt;throos@amazon.de&gt; wr=
ote:<br>
&gt; &gt;<br>
&gt; &gt; yes, easy<br>
&gt; &gt; - set the go-helloworld bb srcrev to an older rev - e.g:<br>
&gt; &gt; SRCREV =3D &quot;ad95e7f791d8e1e7e7ec7f7cedfc2f6b29f6c9e2&quot;<b=
r>
&gt; &gt;<br>
&gt; &gt; &quot;devtool upgrade go-helloworld&quot;<br>
&gt; &gt;<br>
&gt; &gt; INFO: Extracting upgraded version source...<br>
&gt; &gt; Traceback (most recent call last):<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtoo=
l/upgrade.py&quot;, line 567, in upgrade<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; rev2, md5, sha256, srcbranch, srcsubdir2 =
=3D _extract_new_source(args.version, srctree, args.no_patch,<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtoo=
l/upgrade.py&quot;, line 183, in _extract_new_source<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; __run('git checkout %s' % rev)<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtoo=
l/upgrade.py&quot;, line 170, in __run<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; return _run(cmd, srctree)<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtoo=
l/upgrade.py&quot;, line 31, in _run<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; return bb.process.run('%s' % cmd, cwd=3Dc=
wd)<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/bitbake/lib/bb/pro=
cess.py&quot;, line 189, in run<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; raise ExecutionError(cmd, pipe.returncode=
, stdout, stderr)<br>
&gt; &gt; bb.process.ExecutionError: Execution of 'git checkout 2e68773dfca=
072cb81f219fc3b97ad34fe9d9f94' failed with exit code 128:<br>
&gt; &gt; fatal: reference is not a tree: 2e68773dfca072cb81f219fc3b97ad34f=
e9d9f94<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; During handling of the above exception, another exception occurre=
d:<br>
&gt; &gt;<br>
&gt; &gt; Traceback (most recent call last):<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/devtool&qu=
ot;, line 338, in &lt;module&gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D main()<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/devtool&qu=
ot;, line 325, in main<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D args.func(args, config, basepath,=
 workspace)<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtoo=
l/upgrade.py&quot;, line 575, in upgrade<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; _upgrade_error(e, recipedir, srctree, arg=
s.keep_failure)<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtoo=
l/upgrade.py&quot;, line 134, in _upgrade_error<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; _cleanup_on_error(rd, srctree)<br>
&gt; &gt;&nbsp;&nbsp; File &quot;/home/ubuntu/yocto/poky/scripts/lib/devtoo=
l/upgrade.py&quot;, line 126, in _cleanup_on_error<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; if not len(os.listdir(rdp)):<br>
&gt; &gt; FileNotFoundError: [Errno 2] No such file or directory: '/home/ub=
untu/yocto/build/workspace/recipes'<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; ________________________________<br>
&gt; &gt; Von: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
&gt; &gt; Gesendet: Donnerstag, 20. Oktober 2022 11:32:19<br>
&gt; &gt; An: Roos, Thomas<br>
&gt; &gt; Cc: yocto@lists.yoctoproject.org<br>
&gt; &gt; Betreff: RE: [EXTERNAL][yocto] devtool upgrade for go recipes wit=
h git &quot;broken&quot;<br>
&gt; &gt;<br>
&gt; &gt; CAUTION: This email originated from outside of the organization. =
Do not click links or open attachments unless you can confirm the sender an=
d know the content is safe.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; It helps if you show the exact error, and a way to reproduce this=
<br>
&gt; &gt; using a minimal setup (ideally only poky).<br>
&gt; &gt;<br>
&gt; &gt; Alex<br>
&gt; &gt;<br>
&gt; &gt; On Thu, 20 Oct 2022 at 11:18, Thomas Roos via lists.yoctoproject.=
org<br>
&gt; &gt; &lt;throos=3Damazon.de@lists.yoctoproject.org&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt; when doing a &quot;devtool upgrade&quot; for a recipe which =
inherits &quot;go&quot; and using a SRC_URI to a git repo this will fail. C=
omplaining that the git revision is &quot;out of tree&quot; - I found that =
the additional &quot;src&quot; folder inside the checkout out sources is ca=
using
 this problem and I wondering if this is necessary. I'm not a go programmer=
, but when changing this the recipe seems to produce the same result.<br>
&gt; &gt; &gt; I did change our go recipe to don't use this additional src =
folder by overwriting the go_do_upack and go_do_configure method. Here:
<a href=3D"https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a9=
1b9703609d7658bd1649350acaf/recipes-support/amazon-ssm-agent/amazon-ssm-age=
nt_3.1.1856.0.bb">
https://github.com/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7=
658bd1649350acaf/recipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856=
.0.bb</a><br>
&gt; &gt; &gt; Is this a bug or do anybody know why go use that additional =
src folder?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Cheers,<br>
&gt; &gt; &gt; Thomas<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Amazon Web Services EMEA SARL<br>
&gt; &gt; &gt; 38 avenue John F. Kennedy, L-1855 Luxembourg<br>
&gt; &gt; &gt; Sitz der Gesellschaft: L-1855 Luxemburg<br>
&gt; &gt; &gt; eingetragen im Luxemburgischen Handelsregister unter R.C.S. =
B186284<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Amazon Web Services EMEA SARL, Niederlassung Deutschland<br>
&gt; &gt; &gt; Marcel-Breuer-Str. 12, D-80807 Muenchen<br>
&gt; &gt; &gt; Sitz der Zweigniederlassung: Muenchen<br>
&gt; &gt; &gt; eingetragen im Handelsregister des Amtsgerichts Muenchen unt=
er HRB 242240, USt-ID DE317013094<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; &gt; View/Reply Online (#58372): <a href=3D"https://lists.yoctopr=
oject.org/g/yocto/message/58372">
https://lists.yoctoproject.org/g/yocto/message/58372</a><br>
&gt; &gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/m=
t/94449982/1686489">
https://lists.yoctoproject.org/mt/94449982/1686489</a><br>
&gt; &gt; &gt; Group Owner: yocto&#43;owner@lists.yoctoproject.org<br>
&gt; &gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gm=
ail.com]<br>
&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Amazon Web Services EMEA SARL<br>
&gt; &gt; 38 avenue John F. Kennedy, L-1855 Luxembourg<br>
&gt; &gt; Sitz der Gesellschaft: L-1855 Luxemburg<br>
&gt; &gt; eingetragen im Luxemburgischen Handelsregister unter R.C.S. B1862=
84<br>
&gt; &gt;<br>
&gt; &gt; Amazon Web Services EMEA SARL, Niederlassung Deutschland<br>
&gt; &gt; Marcel-Breuer-Str. 12, D-80807 Muenchen<br>
&gt; &gt; Sitz der Zweigniederlassung: Muenchen<br>
&gt; &gt; eingetragen im Handelsregister des Amtsgerichts Muenchen unter HR=
B 242240, USt-ID DE317013094<br>
&gt; &gt;<br>
&gt; &gt;<br>
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

--_000_840aa137ef2d460a9a6136eb5e725930amazonde_--


