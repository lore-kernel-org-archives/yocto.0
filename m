Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19CBDE013D6
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:35:51 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id m15so1450307wgh.5
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dVC5j6EmjJTZ3zhiDefc4RSVmpN3p4D6480q2GfiUlU=;
	b=Ldulp71q4XfnQl5lwzqTSP2N7qz1lCMHPIvHCRfCXZgWqbGkTwD74ftQ7NV3kD+s0m
	Q8mbO6lEheoQps23xD1vPKtOp9f0Eag6LoirgEQvjDliuN4U0hpfZNd8BD2+Vw5hqhDH
	n2cLV+nNrmqaiVy94ELgkaL6nVHNNTXVC8JpAa1EV5h07L2JSxObW/SpZBg+NYM4n5XJ
	PXQDA7aFCVapY2kd4p/a1E7yjaUjLEU02c/NaziR8DkdQSQY60Dome2gDDsqvE7ZfGz+
	QeeV2yJyU7yvYi1cU9+7PLe2atqj5f/1SRfZ2P+Arb7mzkYaWyJuzMa2rZmKU16WkcE+
	BIcg==
X-Received: by 10.194.94.101 with SMTP id db5mr362839wjb.67.1377167750297;
	Thu, 22 Aug 2013 03:35:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Thu, 22 Aug 2013 03:35:30 -0700 (PDT)
In-Reply-To: <CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Thu, 22 Aug 2013 12:35:30 +0200
Message-ID: <CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Thu, 22 Aug 2013 10:35:52 -0000
Content-Type: multipart/alternative; boundary=047d7beb93b48d7f2d04e486daa3

--047d7beb93b48d7f2d04e486daa3
Content-Type: text/plain; charset=ISO-8859-1

Hi,

My recipe is: http://pastebin.com/xiFdYHNr

Is the cmake recipe will be in this
location? /home/siguser/yocto/poky/meta-openembedded/meta-oe/recipes-support/opencv


On Thu, Aug 22, 2013 at 12:31 PM, Burton, Ross <ross.burton@intel.com>wrote:

> On 22 August 2013 11:30, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> > I am trying to integrate my own package which should use cmake.
> > I regularly use do_compile() and do_install().
>
> Pasting your recipe would be useful, but there's a cmake class you can
> simply inherit that should just work.
>
> Ross
>



-- 
Regards,
Zafrullah Syed

--047d7beb93b48d7f2d04e486daa3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>My recipe is:=A0<a href=3D"http://p=
astebin.com/xiFdYHNr">http://pastebin.com/xiFdYHNr</a></div><div><br></div>=
<div>Is the cmake recipe will be in this location?=A0/home/siguser/yocto/po=
ky/meta-openembedded/meta-oe/recipes-support/opencv</div>

</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu,=
 Aug 22, 2013 at 12:31 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 22 August 2013 11:30, Z=
afrullah Syed &lt;<a href=3D"mailto:zafrullahmehdi@gmail.com">zafrullahmehd=
i@gmail.com</a>&gt; wrote:<br>


&gt; I am trying to integrate my own package which should use cmake.<br>
&gt; I regularly use do_compile() and do_install().<br>
<br>
</div>Pasting your recipe would be useful, but there&#39;s a cmake class yo=
u can<br>
simply inherit that should just work.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><span style=3D"font-family:arial,sans-serif;font-size:13px;border-collaps=
e:collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><f=
ont color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-coll=
apse:collapse"><br>

</span></font></div>
</div>

--047d7beb93b48d7f2d04e486daa3--
