Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 657C3E00950; Wed, 13 Feb 2019 00:22:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7634E007B3
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2019 00:22:21 -0800 (PST)
Received: from [90.236.121.192] ([90.236.121.192]) by cmsmtp with ESMTPA
	id tpoBgJXuUHNTStpoBgIwMr; Wed, 13 Feb 2019 09:22:20 +0100
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15F79)
In-Reply-To: <000001d4c36c$b99aef10$2cd0cd30$@singh@ppsinternational.in>
Date: Wed, 13 Feb 2019 09:22:19 +0100
Message-Id: <27D16836-A33F-4570-AF62-3D031E6E9134@emagii.com>
References: <000001d4c36c$b99aef10$2cd0cd30$@singh@ppsinternational.in>
To: Bhupendra Singh <bhupendra.singh@ppsinternational.in>
X-CMAE-Envelope: MS4wfJhTH4eLkSJarXgePFS1zTutbb/4wBM+XkRXshN/Z2Ai31V6HAB/Fvn3apf22b/V+SqggTmwhoVrGTxfif0Aj2mmi2trReNlvADB6cmXQLhP4FdUlrNG
	ls4PmyWuhH63VVnllHfB3uP02WZSDVHcmIWxM7NiBEI13M5zC82uiZm7B3qfEVSK1XSU3RqpDHbIs1bqXtGW2jCP3IFsWaNlk+DUr8wdA7zuknhWq4GiEo1x
Cc: yocto@yoctoproject.org
Subject: Re: Make one directory writeable
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
X-List-Received-Date: Wed, 13 Feb 2019 08:22:24 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-A57BABB0-F239-453C-AD2F-EA2DA8200FD6
Content-Transfer-Encoding: 7bit

--Apple-Mail-A57BABB0-F239-453C-AD2F-EA2DA8200FD6
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

You can use overlayfs for this. You mount the overlayfs on top of your rootf=
s and then it appear like you have a writeable file system.
In reality all the new  stuff is written to another (writeable) file system.=

If you dismount the overlayfs, the rootfs reverts back to its original state=
.
If you again  mount the overlayfs, you get your modifications back.

Best Regards,
Ulf Samuelsson
+46 722 427 437

> 13 feb. 2019 kl. 08:21 skrev Bhupendra Singh <bhupendra.singh@ppsinternati=
onal.in>:
>=20
> Hello
> I have built core-image-minimal  with read only rootfs  then now  I want t=
o make one directory (like /mnt) writable.
> Is it possible to make one directory writeable in read only rootfs if yes ,=
please tell me how can I do same.  =20
> =20
> Bhupendra Singh
> =20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-A57BABB0-F239-453C-AD2F-EA2DA8200FD6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head><meta http-equiv="content-type" content="text/html; charset=utf-8"></head><body dir="auto">You can use overlayfs for this. You mount the overlayfs on top of your rootfs and then it appear like you have a writeable file system.<div>In reality all the new &nbsp;stuff is written to another (writeable) file system.</div><div>If you dismount the overlayfs, the rootfs reverts back to its original state.</div><div>If you again &nbsp;mount the overlayfs, you get your modifications back.</div><div><br><div id="AppleMailSignature">Best Regards,<div>Ulf Samuelsson</div><div>+46 722 427 437</div></div><div><br>13 feb. 2019 kl. 08:21 skrev Bhupendra Singh &lt;<a href="mailto:bhupendra.singh@ppsinternational.in">bhupendra.singh@ppsinternational.in</a>&gt;:<br><br></div><blockquote type="cite"><div>


<meta http-equiv="Content-Type" content="text/html; charset=us-ascii">
<meta name="Generator" content="Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->




<div class="Section1">

<p class="MsoNormal"><b><span style="font-size:12.0pt;color:#548DD4">Hello <o:p></o:p></span></b></p>

<p class="MsoNormal"><b><span style="font-size:12.0pt;color:#548DD4">I have built
core-image-minimal&nbsp; with read only rootfs&nbsp; then now &nbsp;I want to
make one directory (like /mnt) writable. <o:p></o:p></span></b></p>

<p class="MsoNormal"><b><span style="font-size:12.0pt;color:#548DD4">Is it
possible to make one directory writeable in read only rootfs if yes ,please
tell me how can I do same. &nbsp;&nbsp;<o:p></o:p></span></b></p>

<p class="MsoNormal"><o:p>&nbsp;</o:p></p>

<p class="MsoNormal" style="background:white"><span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:#4F81BD">Bhupendra Singh</span><span style="font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#4F81BD"><o:p></o:p></span></p>

<p class="MsoNormal"><o:p>&nbsp;</o:p></p>

</div>




</div></blockquote><blockquote type="cite"><div><span>-- </span><br><span>_______________________________________________</span><br><span>yocto mailing list</span><br><span><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></span><br><span><a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></blockquote></div></body></html>

--Apple-Mail-A57BABB0-F239-453C-AD2F-EA2DA8200FD6--
