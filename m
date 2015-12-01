Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67D8AE00AE6; Tue,  1 Dec 2015 15:42:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.120.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm43-vm0.bullet.mail.ne1.yahoo.com
	(nm43-vm0.bullet.mail.ne1.yahoo.com [98.138.120.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05474E00ADF
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 15:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1449013327; bh=m2App0W+Tah4a3ig+J/APURbfIZCMNa6eHXriVtJJ4M=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=QXxF9mOi5+5mKyVCz8Lmo0XWFpvIQhzkLYEYChkZlDnsXs7pXPrUveZqDqyFFItAsidr/va8btRxQi28vX+hKSGdPpYyIvYbAIERALkDZrfPgzn1g7xIzIo8BbAfMwT/AvdM7YMji31fBGMyBJoNv00kPhBLma8gN1rLXtBtY8pkzMBL16iWZWxPbEbu50aRlOihoXpsVcdECWuUbm/GsCxw7DGfZWH4Ti/8mglidAJ0B/wtgFtF+c2/0z5N6EltNpOaWPnrpzVB+auM8HbEgzseECnHHyRktwQFTFoZ4VqT9iZaP7dxNGBZXIsrSr+6wyAJ5Dr85rPju/2kTYwoPA==
Received: from [127.0.0.1] by nm43.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Dec 2015 23:42:07 -0000
Received: from [98.138.100.114] by nm43.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Dec 2015 23:39:18 -0000
Received: from [98.138.87.4] by tm105.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Dec 2015 23:39:18 -0000
Received: from [127.0.0.1] by omp1004.mail.ne1.yahoo.com with NNFMP;
	01 Dec 2015 23:39:18 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 673638.69624.bm@omp1004.mail.ne1.yahoo.com
X-YMail-OSG: 1Znf6D8VM1kHasUxv6lKLqXG1cOtoqbpb9sFy_d0hbbrSoBUqN6zpKpbV79pW2w
	E8WeZL2PYN_deiKld5DeyfaHXDCRHE15yTKoPvu0HEedxUNjLW.Hjgjk4sGz_3LUYsj_QUb4B1dg
	vRufpaQBPYGsSds3T77U81dMTRSYw528G.ZEgYu1ZO252WB4HyKRsUpuDsVJH9.7mi2CZALHzkxy
	J3xZH12qfrNqyB61Dd_YzCdPlBVcqB.GmBke7xqlzu.YII1QBqK8kw._5MxgtBBAUgIeqjgVzhjr
	edIP4jGBwDVlKjYYZVtDJvYIhz4._B2gY2HIfuVWVLuD5t_Z7B4veQMEVUVWeKSWwdJBKfyf9aZg
	MyysbCLLjFxTCDe3UYFhZRxZ9R2420AIan_uKcB5i5vgHEyeWohbHdbztCP3hT7Rt_6ePbCiEZ8q
	L9QLbxVQ9nVA6Ko0EHPkONpnPveE1uT3MnCC1oBvTUFLoKzMtXh42ID9fv5efE1y2ECrwpXUUUxQ
	wSMZds8D_cP6a6TmykAuNvNEjXFMw1w1NPMCvnDqvZhJbaolAaWjGdHgJo8xm2w--
Received: by 98.138.101.176; Tue, 01 Dec 2015 23:39:18 +0000 
Date: Tue, 1 Dec 2015 23:39:17 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <1834947813.1024710.1449013157851.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAMKF1spk9bvgwxMgx5wGi1yaMFK9dapqX08YpB2awkrtfmRs_Q@mail.gmail.com>
References: <CAMKF1spk9bvgwxMgx5wGi1yaMFK9dapqX08YpB2awkrtfmRs_Q@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Problem using unix source in do_compile
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Dec 2015 23:42:14 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1024709_1167256791.1449013157844"

------=_Part_1024709_1167256791.1449013157844
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Kherm,
I did follow Paul recommendations.=C2=A0 The issue was not just using the s=
ource unix command.
When I changed source to '.', a new error occurred.=C2=A0=C2=A0=20

do_compile) failed with exit code '1' What is the unexpected
> operator?
This error was caused by not having a gmake.=C2=A0 Searching to resolve the=
 gmake issue,=20
which some recommend linking to make.=C2=A0=20

On this problem I have been working for quite some time.=C2=A0 I don't now =
if this is related
to dash bash issue or not.=C2=A0=20

I was working on a Fedora system which uses bash.=C2=A0 My binutils
2.23.2-r4 was most likely built on the Fedora system.=C2=A0 I needed to swi=
tch to an O/S
that support Xilinx Tools, so I copied my working tree to a Ubuntu system.

I have removed from tmp down several times trying different things and bitb=
ake core-image-sato=20
rebuilds the tmp area.=C2=A0 I wanted to remove from build,=C2=A0 but then =
is when my binutils 2.23.2-r4
would failed.=C2=A0 I had to restore my build/buildhistory=C2=A0 build/cach=
e=C2=A0 build/conf=C2=A0 build/sanity_info=C2=A0 build/sstate-cache=C2=A0 a=
nd then tmp was rebuilt with bitbake core-image-sato.

I really do appreciate all the help that the folks on this mailing list and=
 meta-xilinx
mailing list.=C2=A0Thanks for all the help,
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20


    On Monday, November 30, 2015 1:21 PM, Khem Raj <raj.khem@gmail.com> wro=
te:
=20

=20
On Nov 25, 2015 7:30 PM, "Edward Vidal" <develone@sbcglobal.net> wrote:
>
> Hello all,
> After a long time of trying to get Michael Looijmans fpga-image-adi.bb fr=
om meta-topic to work.=C2=A0 I wanted to share the fix.=C2=A0 I was running=
 Ubuntu 12.04.
> which sh
> /bin/sh
> cd /bin
> ls -la sh
> lrwxrwxrwx 1 root root 4 May 16=C2=A0 2015 sh -> dash
> ln -sf bash sh
> ls -la /bin/sh
> lrwxrwxrwx 1 root root 4 Nov 25 17:28 /bin/sh -> bash
> which gmake
> /usr/bin/gmake
> cd /usr/bin
> ln -sf make gmake
> ls -la /usr/bin/gmake
> Thanks for all the help.There are better ways to switch default sh to be =
bash or dash dpkg-reconfigure dash would offer you the selection choice. Bu=
t why did you not try Paul's suggestions
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


  

------=_Part_1024709_1167256791.1449013157844
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_1_1449011415329_3686"><spa=
n id=3D"yui_3_16_0_1_1449011415329_3749">Kherm,</span></div><div dir=3D"ltr=
" id=3D"yui_3_16_0_1_1449011415329_3786"><span id=3D"yui_3_16_0_1_144901141=
5329_3749"><br></span></div><div id=3D"yui_3_16_0_1_1449011415329_3869" dir=
=3D"ltr"><span id=3D"yui_3_16_0_1_1449011415329_3749">I did follow Paul rec=
ommendations.&nbsp; The issue was not just using the source unix command.<b=
r class=3D"" id=3D"yui_3_16_0_1_1449011415329_3788">When I changed source t=
o '.', a new error occurred.&nbsp;&nbsp; <br class=3D"" id=3D"yui_3_16_0_1_=
1449011415329_3790"><br class=3D"" id=3D"yui_3_16_0_1_1449011415329_3792">d=
o_compile) failed with exit code '1' What is the unexpected<br class=3D"" i=
d=3D"yui_3_16_0_1_1449011415329_3794">&gt; operator?<br class=3D"" id=3D"yu=
i_3_16_0_1_1449011415329_3796">This error was caused by not having a gmake.=
&nbsp; Searching to resolve the gmake issue, <br class=3D"" id=3D"yui_3_16_=
0_1_1449011415329_3798">which some recommend linking to make.&nbsp; <br cla=
ss=3D"" id=3D"yui_3_16_0_1_1449011415329_3800"><br class=3D"" id=3D"yui_3_1=
6_0_1_1449011415329_3802">On this problem I have been working for quite som=
e time.&nbsp; I don't now if this is related<br class=3D"" id=3D"yui_3_16_0=
_1_1449011415329_3804">to dash bash issue or not.&nbsp; <br></span></div><d=
iv id=3D"yui_3_16_0_1_1449011415329_3924" dir=3D"ltr"><span id=3D"yui_3_16_=
0_1_1449011415329_3749"><br></span></div><div id=3D"yui_3_16_0_1_1449011415=
329_3925" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1449011415329_3749">I was wo=
rking on a Fedora system which uses bash.&nbsp; My binutils<br class=3D"" i=
d=3D"yui_3_16_0_1_1449011415329_3806">2.23.2-r4 was most likely built on th=
e Fedora system.&nbsp; I needed to switch to an O/S<br class=3D"" id=3D"yui=
_3_16_0_1_1449011415329_3808">that support Xilinx Tools, so I copied my wor=
king tree to a Ubuntu system.<br class=3D"" id=3D"yui_3_16_0_1_144901141532=
9_3810"><br class=3D"" id=3D"yui_3_16_0_1_1449011415329_3812">I have remove=
d from tmp down several times trying different things and bitbake core-imag=
e-sato <br class=3D"" id=3D"yui_3_16_0_1_1449011415329_3814">rebuilds the t=
mp area.&nbsp; I wanted to remove from build,&nbsp; but then is when my bin=
utils 2.23.2-r4<br class=3D"" id=3D"yui_3_16_0_1_1449011415329_3816">would =
failed.&nbsp; I had to restore my build/buildhistory&nbsp; build/cache&nbsp=
; build/conf&nbsp; build/sanity_info&nbsp; build/sstate-cache&nbsp; and the=
n tmp was rebuilt with bitbake core-image-sato.<br class=3D"" id=3D"yui_3_1=
6_0_1_1449011415329_3818"><br class=3D"" id=3D"yui_3_16_0_1_1449011415329_3=
820">I really do appreciate all the help that the folks on this mailing lis=
t and meta-xilinx<br class=3D"" id=3D"yui_3_16_0_1_1449011415329_3822">mail=
ing list.</span></div><div id=3D"yui_3_16_0_1_1449011415329_3747"><div id=
=3D"yui_3_16_0_1_1449011415329_4044">&nbsp;</div><div id=3D"yui_3_16_0_1_14=
49011415329_4042">Thanks for all the help,</div><div id=3D"yui_3_16_0_1_144=
9011415329_4043"><br></div></div><div id=3D"yui_3_16_0_1_1449011415329_3748=
" class=3D"signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-59=
5-1613</div> <br><div class=3D"qtdSeparateBR"><br><br></div><div style=3D"d=
isplay: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: Helvetic=
aNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-si=
ze: 16px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helve=
tica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"=
><font face=3D"Arial" size=3D"2"> On Monday, November 30, 2015 1:21 PM, Khe=
m Raj &lt;raj.khem@gmail.com&gt; wrote:<br></font></div>  <br><br> <div cla=
ss=3D"y_msg_container"><div id=3D"yiv1371262383"><div><div dir=3D"ltr"><br =
clear=3D"none">
On Nov 25, 2015 7:30 PM, "Edward Vidal" &lt;<a rel=3D"nofollow" shape=3D"re=
ct" ymailto=3D"mailto:develone@sbcglobal.net" target=3D"_blank" href=3D"mai=
lto:develone@sbcglobal.net">develone@sbcglobal.net</a>&gt; wrote:<br clear=
=3D"none">
&gt;<br clear=3D"none">
&gt; Hello all,<br clear=3D"none">
&gt; After a long time of trying to get Michael Looijmans <a rel=3D"nofollo=
w" shape=3D"rect" target=3D"_blank" href=3D"http://fpga-image-adi.bb/">fpga=
-image-adi.bb</a> from meta-topic to work.&nbsp; I wanted to share the fix.=
&nbsp; I was running Ubuntu 12.04.<br clear=3D"none">
&gt; which sh<br clear=3D"none">
&gt; /bin/sh<br clear=3D"none">
&gt; cd /bin<br clear=3D"none">
&gt; ls -la sh<br clear=3D"none">
&gt; lrwxrwxrwx 1 root root 4 May 16&nbsp; 2015 sh -&gt; dash<br clear=3D"n=
one">
&gt; ln -sf bash sh<br clear=3D"none">
&gt; ls -la /bin/sh<br clear=3D"none">
&gt; lrwxrwxrwx 1 root root 4 Nov 25 17:28 /bin/sh -&gt; bash<br clear=3D"n=
one">
&gt; which gmake<br clear=3D"none">
&gt; /usr/bin/gmake<br clear=3D"none">
&gt; cd /usr/bin<br clear=3D"none">
&gt; ln -sf make gmake<br clear=3D"none">
&gt; ls -la /usr/bin/gmake<br clear=3D"none">
&gt; Thanks for all the help.</div>
<div dir=3D"ltr">There are better ways to switch default sh to be bash or d=
ash dpkg-reconfigure dash would offer you the selection choice. But why did=
 you not try Paul's suggestions</div><div class=3D"yiv1371262383yqt08446927=
02" id=3D"yiv1371262383yqtfd51670"><br clear=3D"none">
&gt;<br clear=3D"none">
&gt; Edward Vidal Jr. e-mail <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"=
mailto:develone@sbcglobal.net" target=3D"_blank" href=3D"mailto:develone@sb=
cglobal.net">develone@sbcglobal.net</a> 915-595-1613</div><br clear=3D"none=
">
&gt;<br clear=3D"none">
&gt; --<br clear=3D"none">
&gt; _______________________________________________<br clear=3D"none">
&gt; yocto mailing list<br clear=3D"none">
&gt; <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoprojec=
t.org" target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a><br clear=3D"none">
&gt; <a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"https://l=
ists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listin=
fo/yocto</a><div class=3D"yiv1371262383yqt0844692702" id=3D"yiv1371262383yq=
tfd11350"><br clear=3D"none">
&gt;<br clear=3D"none">
</div></div></div><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_1024709_1167256791.1449013157844--
