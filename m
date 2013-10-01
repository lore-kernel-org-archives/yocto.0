Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 175ACE01611
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 07:18:41 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id n12so7237386wgh.3
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 07:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WzBlkA2hCi2rbDZYJee7hfLN+cLl2K83CEVATMGpa0c=;
	b=IGucxTZ63Z8AZ1oK0C6Fb62CUUN3aDctqCs2jlwY3UigG7hGHmtgTiY7qaUFeJaV3Y
	hMygt3qvnWNvY1fgkjdTDP3BUsg5Mf1QDqdmMzDlB2Bv6J0HiweumHXDc6a1x7oxVUfc
	Wr23qzN5QkmKFMdYJR4IELgwWf6mAvqfGNdPj6NoNbXgo9+EuJrhhxljHiTrlcRBGfXY
	b+9tKMN9iovd0YaaMCrHF0PLyjaInKERyeh9nhdnwg38T5FX338lZ/irGhd1QZWu+7fw
	Wwh/WvZIg0DHgj7gOk1k86Jlh6ZTzC1cVF5aOmsazyvw+07tIMGjFJbguccBZuXgdm28
	fkOA==
MIME-Version: 1.0
X-Received: by 10.194.9.70 with SMTP id x6mr22456226wja.22.1380637120882; Tue,
	01 Oct 2013 07:18:40 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Tue, 1 Oct 2013 07:18:40 -0700 (PDT)
In-Reply-To: <6d6111d1-28f2-40d5-a55c-ae04ab2911b4@email.android.com>
References: <CABHD4K-2dfbGYj6p13C=uYXS4pzLGQ+NZaV_PkqahKu_zknJjg@mail.gmail.com>
	<CABHD4K-1p9Va1_+xjtLsiKkMX8ak1hUvZikNFMnU7BZsZ49WEg@mail.gmail.com>
	<20131001132628.GB6493@ad.chargestorm.se>
	<CABHD4K-4Y3EwtJrVpqWp-Y_GxBHXCvhqBNYrLeBEf==eT0ge=w@mail.gmail.com>
	<6d6111d1-28f2-40d5-a55c-ae04ab2911b4@email.android.com>
Date: Tue, 1 Oct 2013 19:48:40 +0530
Message-ID: <CABHD4K8nFzX1g5S3=Jyv1KsKBVgBjias6D1nd6m87qx0EJSSCQ@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Anders Darander <anders@chargestorm.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Provide sftp-client support in yocto
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
X-List-Received-Date: Tue, 01 Oct 2013 14:18:43 -0000
Content-Type: multipart/alternative; boundary=047d7b5d57ce2770ff04e7aea124

--047d7b5d57ce2770ff04e7aea124
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yes Anders, I can see openssh-sftp folder inside  "tmp/work/fkm-poky-linux-
gnueabi/openssh/6.1p1-r3/packages-split".But its empty one.

DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4.2"

This is taken from build confriguation.

Thanks
Amit.


On Tue, Oct 1, 2013 at 7:37 PM, Anders Darander <anders@chargestorm.se>wrot=
e:

>
>
> Amit Tomer <amittomer25@gmail.com> wrote:
> >Thansk Anders for your kind response
> >
> >
> >Yes we are created our image and can see there are some IMAGE_INSTALL
> >already used
>
> Good.
>
> >But when I add  IMAGE_INSTALL +=3D "openssh-sftp"
> >
> >
> >Getting below error
> >
> >
> >Error: openssh-sftp not found in the base feeds (zzz_pyp_ii
> >cortexa15hf-vfp-neon cortexa15hf-vfp armv7ahf-vfp-neon armv7ahf-vfp
> >armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).
> >
> >
> >Do we need to do something more here
>
> That should have been enough.
>
> If you look in
> tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/packages-split, do you s=
ee
> openssh-sftp there, or which packages do you have there?
>
> Which version of Yocto / Poky are you using? What layers do you have
> enabled?
>
> Cheers,
> Anders
>
> >Thanks
> >
> >Amit
> >
> >
> >
> >
> >
> >On Tue, Oct 1, 2013 at 6:56 PM, Anders Darander <anders@chargestorm.se>
> >wrote:
> >
> >* Amit Tomer <amittomer25@gmail.com> [131001 14:57]:
> >
> >> Just now I have seen your responses ,didn't get any notification of
> >your
> >> responses on my mail-id.
> >
> >> Let me present my problem again to you guys.
> >
> >> We have stfp-server running fine on put target machine and is running
> >as part
> >> of sshd daemon.
> >
> >Ok, that sounds good. Then the server is apparantly no problem for you.
> >
> >
> >> But when we try to connect to other machine from target board, sftp
> >is not
> >> working becaue our borad is set to run as sftp -client.
> >
> >> An SFTP client program called sftp is already insatlled to tmp/work/
> >> fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/bin.
> >
> >The build process built sftp (the client) as a part of building
> >openssh.
> >The client was packaged into a separate package, called openssh-sftp.
> >
> >
> >> But on Target I could not find this sftp .bins.
> >
> >Now you need to install that package, openssh-sftp, to your image.
> >
> >If you have created your own image, just add openssh-sftp to
> >IMAGE_INSTALL.
> >
> >If you're not creating your own images, I'd strongly suggest that you
> >do
> >that. (It'll make all your customizations a lot easier in the end). See
> >
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using=
poky-extend-customimage-custombb
> >for more information.
> >
> >I hope this answers your question.
> >
> >Cheers,
> >Anders
> >
> >
> >> Now we want this stfp run as some daemon or part of sshd daemon
> >itself.
> >
> >> Anders: It's already being installed to a package named openssh-sftp
> >
> >> We don't have package named openssh-sftp ,we have package named with
> >openssh
> >> only
> >
> >> Thanks
> >> Amit
> >
> >
> >
> >
> >
> >
> >
> >> On Tue, Oct 1, 2013 at 1:22 PM, Amit Tomer <amittomer25@gmail.com>
> >wrote:
> >
> >>     I am new to OpenEmbedded Yocto project and have a requirement to
> >provide
> >>     sftp-client support on my target board.
> >
> >>     Sftp-server bins are already packed into final image and is
> >installed at
> >
> >>
> >tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/lib/openssh=
/
> >>     sftp-server
> >
> >>     Now ,same way Do I have to install stfp client bins also or is
> >there any
> >>     other way to go about it??
> >
> >>     Thanks
> >>     Amit
> >
> >
> >
> >
> >
> >
> >
> >--
> >Anders Darander
> >ChargeStorm AB / eStorm AB
>
> --
> Anders Darander
> ChargeStorm AB          Tel: +46 702 44 84 36
> Laxholmstorget 3        Email: anders@chargestorm.se
> 602 21 Norrk=F6ping       Web: www.chargestorm.se
>
> Sent from my Android phone with K-9 Mail. Please excuse my brevity.
>

--047d7b5d57ce2770ff04e7aea124
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes Anders, I can see openssh-sftp folder inside=A0=A0&quo=
t;<span style=3D"font-family:arial,sans-serif;font-size:13px">tmp/work/fkm-=
poky-linux-</span><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">gnueabi/openssh/6.1p1-r3/</span><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">packages-split&quot;.</span><span style=3D"font-family:=
arial,sans-serif;font-size:13px">But its empty one.</span><div style>
<span style=3D"font-family:arial,sans-serif;font-size:13px"><br></span></di=
v><div style><div><font face=3D"arial, sans-serif">DISTRO =A0 =A0 =A0 =A0 =
=A0 =A0=3D &quot;poky&quot;</font></div><div><font face=3D"arial, sans-seri=
f">DISTRO_VERSION =A0 =A0=3D &quot;1.4.2&quot;</font></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div><div s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">This is taken from bui=
ld confriguation.</div><div style=3D"font-family:arial,sans-serif;font-size=
:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Thanks=
=A0</div><div style=3D"font-family:arial,sans-serif;font-size:13px">Amit.</=
div></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">On Tue, Oct 1, 2013 at 7:37 PM, Anders Darander <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:anders@chargestorm.se" target=3D"_blank">anders@chargestorm=
.se</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im"><br>
<br>
Amit Tomer &lt;<a href=3D"mailto:amittomer25@gmail.com">amittomer25@gmail.c=
om</a>&gt; wrote:<br>
&gt;Thansk Anders for your kind response<br>
&gt;<br>
&gt;<br>
&gt;Yes we are created our image and can see there are some IMAGE_INSTALL<b=
r>
&gt;already used<br>
<br>
</div>Good.<br>
<div class=3D"im"><br>
&gt;But when I add =A0IMAGE_INSTALL +=3D &quot;openssh-sftp&quot;<br>
&gt;<br>
&gt;<br>
&gt;Getting below error<br>
&gt;<br>
&gt;<br>
&gt;Error: openssh-sftp not found in the base feeds (zzz_pyp_ii<br>
&gt;cortexa15hf-vfp-neon cortexa15hf-vfp armv7ahf-vfp-neon armv7ahf-vfp<br>
&gt;armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).<br>
&gt;<br>
&gt;<br>
&gt;Do we need to do something more here<br>
<br>
</div>That should have been enough.<br>
<br>
If you look in tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/packages-sp=
lit, do you see openssh-sftp there, or which packages do you have there?<br=
>
<br>
Which version of Yocto / Poky are you using? What layers do you have enable=
d?<br>
<br>
Cheers,<br>
Anders<br>
<div><div class=3D"h5"><br>
&gt;Thanks<br>
&gt;<br>
&gt;Amit<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;On Tue, Oct 1, 2013 at 6:56 PM, Anders Darander &lt;<a href=3D"mailto:a=
nders@chargestorm.se">anders@chargestorm.se</a>&gt;<br>
&gt;wrote:<br>
&gt;<br>
&gt;* Amit Tomer &lt;<a href=3D"mailto:amittomer25@gmail.com">amittomer25@g=
mail.com</a>&gt; [131001 14:57]:<br>
&gt;<br>
&gt;&gt; Just now I have seen your responses ,didn&#39;t get any notificati=
on of<br>
&gt;your<br>
&gt;&gt; responses on my mail-id.<br>
&gt;<br>
&gt;&gt; Let me present my problem again to you guys.<br>
&gt;<br>
&gt;&gt; We have stfp-server running fine on put target machine and is runn=
ing<br>
&gt;as part<br>
&gt;&gt; of sshd daemon.<br>
&gt;<br>
&gt;Ok, that sounds good. Then the server is apparantly no problem for you.=
<br>
&gt;<br>
&gt;<br>
&gt;&gt; But when we try to connect to other machine from target board, sft=
p<br>
&gt;is not<br>
&gt;&gt; working becaue our borad is set to run as sftp -client.<br>
&gt;<br>
&gt;&gt; An SFTP client program called sftp is already insatlled to tmp/wor=
k/<br>
&gt;&gt; fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/bin.<br>
&gt;<br>
&gt;The build process built sftp (the client) as a part of building<br>
&gt;openssh.<br>
&gt;The client was packaged into a separate package, called openssh-sftp.<b=
r>
&gt;<br>
&gt;<br>
&gt;&gt; But on Target I could not find this sftp .bins.<br>
&gt;<br>
&gt;Now you need to install that package, openssh-sftp, to your image.<br>
&gt;<br>
&gt;If you have created your own image, just add openssh-sftp to<br>
&gt;IMAGE_INSTALL.<br>
&gt;<br>
&gt;If you&#39;re not creating your own images, I&#39;d strongly suggest th=
at you<br>
&gt;do<br>
&gt;that. (It&#39;ll make all your customizations a lot easier in the end).=
 See<br>
&gt;<a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manu=
al.html#usingpoky-extend-customimage-custombb" target=3D"_blank">http://www=
.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-=
customimage-custombb</a><br>

&gt;for more information.<br>
&gt;<br>
&gt;I hope this answers your question.<br>
&gt;<br>
&gt;Cheers,<br>
&gt;Anders<br>
&gt;<br>
&gt;<br>
&gt;&gt; Now we want this stfp run as some daemon or part of sshd daemon<br=
>
&gt;itself.<br>
&gt;<br>
&gt;&gt; Anders: It&#39;s already being installed to a package named openss=
h-sftp<br>
&gt;<br>
&gt;&gt; We don&#39;t have package named openssh-sftp ,we have package name=
d with<br>
&gt;openssh<br>
&gt;&gt; only<br>
&gt;<br>
&gt;&gt; Thanks<br>
&gt;&gt; Amit<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;&gt; On Tue, Oct 1, 2013 at 1:22 PM, Amit Tomer &lt;<a href=3D"mailto:a=
mittomer25@gmail.com">amittomer25@gmail.com</a>&gt;<br>
&gt;wrote:<br>
&gt;<br>
&gt;&gt; =A0 =A0 I am new to OpenEmbedded Yocto project and have a requirem=
ent to<br>
&gt;provide<br>
&gt;&gt; =A0 =A0 sftp-client support on my target board.<br>
&gt;<br>
&gt;&gt; =A0 =A0 Sftp-server bins are already packed into final image and i=
s<br>
&gt;installed at<br>
&gt;<br>
&gt;&gt;<br>
&gt;tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/lib/openss=
h/<br>
&gt;&gt; =A0 =A0 sftp-server<br>
&gt;<br>
&gt;&gt; =A0 =A0 Now ,same way Do I have to install stfp client bins also o=
r is<br>
&gt;there any<br>
&gt;&gt; =A0 =A0 other way to go about it??<br>
&gt;<br>
&gt;&gt; =A0 =A0 Thanks<br>
&gt;&gt; =A0 =A0 Amit<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;--<br>
&gt;Anders Darander<br>
&gt;ChargeStorm AB / eStorm AB<br>
<br>
--<br>
Anders Darander<br>
</div></div>ChargeStorm AB=A0=A0=A0=A0=A0=A0=A0=A0=A0 Tel: +46 702 44 84 36=
<br>
Laxholmstorget 3=A0=A0=A0=A0=A0=A0=A0 Email: <a href=3D"mailto:anders@charg=
estorm.se">anders@chargestorm.se</a><br>
602 21 Norrk=F6ping=A0=A0=A0=A0=A0=A0 Web: <a href=3D"http://www.chargestor=
m.se" target=3D"_blank">www.chargestorm.se</a><br>
<br>
Sent from my Android phone with K-9 Mail. Please excuse my brevity.<br>
</blockquote></div><br></div>

--047d7b5d57ce2770ff04e7aea124--
