Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08A75E00A27; Tue, 12 Jan 2016 00:32:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 089CCE008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 00:32:16 -0800 (PST)
Received: by mail-ig0-f180.google.com with SMTP id z14so138264478igp.0
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 00:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tanmic-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=lbaq4xvCfaRWcJFcD0h0g4Of6bRgYaw3WEGoVxNlr5s=;
	b=E290qIWwHv/hXNAGhO2WXATm0OqFXvPt5MkRQP10os/Spi4MPAnZ6lQKW8A9DmOTrM
	mqQVmPsQeCNg1mTfp3scF35Mn8FoX4eOoUbVpG8RA+OmDXna/G17P822aY5v7g+wGYHW
	OSsDPUDawG1ZJZHxmMw3GGOvUVjnxy4YAiBQWJQgRbva2mX2W6h3LPjmulpnZO0/UbT/
	SXV+/zS0Q6Xr4wQFx4oqdj/g6GtJYad+p/Zag5Dco8POB58KJQRTMwND/RRxUlZyeBu9
	Z2BPbtp/n5E5FLXXZXxvrV3E+Oa5zlNegmwyZ5Btvy/B9ZcYt/1SreuH2bs0OnQplpnh
	fpxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:content-type;
	bh=lbaq4xvCfaRWcJFcD0h0g4Of6bRgYaw3WEGoVxNlr5s=;
	b=jM6EEqL1ejP0jPFVaXIOaJ6qBtedeS15jYaSwTF4/v0bO5+inWAR2Vz4tt9F3PlWzq
	daskx4NvrJwBZV15uuzyC59R5eoTffdrGNRYU2KuaRAq9UGfIKNjP7SInNYJeOzR2jZS
	OGDGkLocRWXDs9vAhVGNX7QJyhG3bXdj0WDhjm021k6poWKVmt2LgtfUERdahFvPkENX
	f2m3EtiOiN4grOfCA54djKrO1LxY41ZOAH7ePUyINN7wQ0Fi6C4XvAmFeZgei9fB+Klv
	auSKDeBoNXpuw08QHiO/lh5Z+z1LSVEGPsoa4YdH02KhiMIBev+nOsjB5FKpUp9cpknL
	6quQ==
X-Gm-Message-State: ALoCoQli1J3Ekp30YImMKnDdHlCbj0wMjTDVK0dq4zP5nShQkfdSxz/K9y3n8vbqgYxX/cCHwtq6gienFNGZa2ZnksE38wswIQ==
MIME-Version: 1.0
X-Received: by 10.50.30.166 with SMTP id t6mr16684845igh.15.1452587535997;
	Tue, 12 Jan 2016 00:32:15 -0800 (PST)
Sender: sarayu@tanmic.co.in
Received: by 10.107.184.196 with HTTP; Tue, 12 Jan 2016 00:32:15 -0800 (PST)
Date: Tue, 12 Jan 2016 14:02:15 +0530
X-Google-Sender-Auth: 9j-Kb3SbX3kF7e52Se4DBqVfLSA
Message-ID: <CAF5S8SOmOLVR9gU_=WgxW1fPZNxUyyEqO5j_mH5xsFnr=Ex-Cg@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: yocto@yoctoproject.org
Subject: How to build jffs2 rootfs image in freescale community build
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
X-List-Received-Date: Tue, 12 Jan 2016 08:32:19 -0000
Content-Type: multipart/alternative; boundary=047d7bdc125416b97105291ee4af

--047d7bdc125416b97105291ee4af
Content-Type: text/plain; charset=UTF-8

Hi all ,

I was initially using the QorIQ-SDK-V1.8 SDK and was using the command
"bitbake corre-image-full " to generate the full images including the uboot
, the jffs2 filesystem etc as shown below ,

*-rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46
fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2*

Hoe ever now i have moved to the fsl-community-bsp and want to generate the
full images . I am uisng the command "bitbake core-image-full-cmdline"  as
the "core-image-full " command was not available . But it still did not
generate the individual filesystem types . It generated a filesystem file
like the below .

*-rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12
core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz*


 Can you please let me know how to generate the jffs2 image in my community
bsp ? Please let me know what i am missing here .


Thanks in advance for your help.
Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

--047d7bdc125416b97105291ee4af
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;com=
ic sans ms&#39;,sans-serif">Hi all ,=C2=A0</div><div class=3D"gmail_default=
" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></div><div c=
lass=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-se=
rif">I was initially using the=C2=A0<span class=3D"" style=3D"font-size:12.=
8px">QorIQ</span><span style=3D"font-size:12.8px">-SDK-V1.8 SDK and was usi=
ng the command &quot;bitbake corre-image-full &quot; to generate the full i=
mages including the uboot , the jffs2 filesystem etc as shown below ,=C2=A0=
</span></div><div class=3D"gmail_default" style=3D"font-family:&#39;comic s=
ans ms&#39;,sans-serif"><p style=3D"margin:0in;font-family:Calibri;font-siz=
e:11pt"><b>-rw-r--r--. 1 sarayu
sarayu 30670848 Oct 14 13:46
fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2</b></p></div><div cla=
ss=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-seri=
f"><span style=3D"font-size:12.8px"><br></span></div><div class=3D"gmail_de=
fault" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><span style=
=3D"font-size:12.8px">Hoe ever now i have moved to the fsl-community-bsp an=
d want to generate the full images . I am uisng the command &quot;bitbake c=
ore-image-full-cmdline&quot; =C2=A0as the &quot;core-image-full &quot; comm=
and was not available . But it still did not generate the individual filesy=
stem types . It generated a filesystem file like the below .=C2=A0</span></=
div><div class=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#3=
9;,sans-serif"><p style=3D"margin:0in;font-family:Calibri;font-size:11pt"><=
b>-rw-r--r--. 1 sarayu
sarayu 24353214 Jan 11 23:12
core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz</b></p><p s=
tyle=3D"margin:0in;font-family:Calibri;font-size:11pt"><b><br></b></p><p st=
yle=3D"margin:0in;font-family:Calibri;font-size:11pt">=C2=A0Can you please =
let me know how to generate the jffs2 image in my community bsp ? Please le=
t me know what i am missing here .=C2=A0</p><p style=3D"margin:0in;font-fam=
ily:Calibri;font-size:11pt"><br></p><p style=3D"margin:0in;font-family:Cali=
bri;font-size:11pt">Thanks in advance for your help.</p></div><div><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D=
"comic sans ms, sans-serif">Thanks and Regards,</font><div><font face=3D"co=
mic sans ms, sans-serif">Sarayu K S=C2=A0</font></div><div><font face=3D"co=
mic sans ms, sans-serif">Tech Lead=C2=A0</font></div><div><font face=3D"com=
ic sans ms, sans-serif">Zaikenn Technologies</font></div></div></div></div>=
</div></div>
</div>

--047d7bdc125416b97105291ee4af--
