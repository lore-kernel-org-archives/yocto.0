Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2071EE0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 03:08:07 -0800 (PST)
Received: by mail-we0-f172.google.com with SMTP id q58so229762wes.3
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 03:08:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LYOnZValqhAMMOH9HJApoxtfOj9ECaGr2sEq5zHFcfQ=;
	b=gbluMgquT/FHXqkr9mh9frIpGHoutNAgNT0XURQRpBrFbU1Cy2f3hkVeqN9KKWDJXG
	LwO2MUtvpsmF8QtGz69CFxWx9soN/wryWd14J7iDrsXpV5c9ePiPd/8COvpJWZkr1Mgp
	3D3XThp9SyPG7xlyOnTWi6vIJDIQhV1C2s9xXbdlEkpFbpsfqnlkfPdfyaBgWPH8URrk
	dm/NNnWTtvsYZxXw4QdEjSnhly8gpeb3eXC2qaV4Gz6wsuCk09/rnSxRtJFmgdHJM7sJ
	VwYZkyYY6e3cl/950s6ykuoRuKikfG60WoGRfiHaCmUy7Bp26XkED+EwnKXRa5P4SXQs
	2Cxw==
X-Gm-Message-State: ALoCoQlCW+D4ry8nXI//KgUZVLYljj/SCA9aqR+4kBJQhDwnFFEfdayksCrLjyQYnVPmlp85/hij
X-Received: by 10.194.175.133 with SMTP id ca5mr26939714wjc.19.1389697686205; 
	Tue, 14 Jan 2014 03:08:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Tue, 14 Jan 2014 03:07:46 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAJTo0LZbAa-DW4PQm751bGM_t22os2cNyN9=XmRteOb4tijkWQ@mail.gmail.com>
References: <20140114105608.GA4192@gmail.com>
	<CAJTo0LZbAa-DW4PQm751bGM_t22os2cNyN9=XmRteOb4tijkWQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 14 Jan 2014 13:07:46 +0200
Message-ID: <CAK18fxGajV8VHw0J=qR7-Uq719axcx4J8vhW4hzpBWr5RikmKw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Audio/Video etc sample files
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
X-List-Received-Date: Tue, 14 Jan 2014 11:08:13 -0000
Content-Type: multipart/alternative; boundary=089e01493c5aee94c004efec34a9

--089e01493c5aee94c004efec34a9
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 14, 2014 at 12:59 PM, Burton, Ross <ross.burton@intel.com>wrote:

> On 14 January 2014 10:56, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Is there any support in including sample files in yocto? For example for
> > testing different players you need samples. Maybe we can have a samples
> meta
> > layer with upstream sources or local ones if there is nothing already
> done.
>
>
> https://github.com/openembedded/meta-oe/tree/master/meta-multimedia/recipes-multimedia/sample-content


Exactly what I was looking for. Thanks.


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e01493c5aee94c004efec34a9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Jan 14, 2014 at 12:59 PM, Burton, Ross <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@in=
tel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 14 January 2014 10:56, =
Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</=
a>&gt; wrote:<br>


&gt; Is there any support in including sample files in yocto? For example f=
or<br>
&gt; testing different players you need samples. Maybe we can have a sample=
s meta<br>
&gt; layer with upstream sources or local ones if there is nothing already =
done.<br>
<br>
</div><a href=3D"https://github.com/openembedded/meta-oe/tree/master/meta-m=
ultimedia/recipes-multimedia/sample-content" target=3D"_blank">https://gith=
ub.com/openembedded/meta-oe/tree/master/meta-multimedia/recipes-multimedia/=
sample-content</a></blockquote>

<div><br></div><div>Exactly what I was looking for. Thanks.=A0</div></div><=
br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-=
align:center"></div><div style=3D"text-align:center"><div align=3D"left" st=
yle=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--089e01493c5aee94c004efec34a9--
