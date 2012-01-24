Return-Path: <kergoth@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17733E00306
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 06:07:24 -0800 (PST)
Received: by iagz35 with SMTP id z35so2631044iag.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 06:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type;
	bh=fBeFFcmQAcucEvUnvIeiJjTVZcp8IFGgIpjinpboeGY=;
	b=u5Gk4hk1quhD7ZCLBnerur7rc3fNzHyQRMYjc8uL2prb2tj+4hF4kLYQhDnUdvvE8O
	9zgaLWUlLnRzB7Vk/GgrJKg7iJb1e1rBDtpJLHVq0jsFQjEzR6xSI6otW/AMX8L7PGv4
	4OC/20sT6CmITV0W/tNjguEct8cDo9PMA2iSI=
Received: by 10.50.161.135 with SMTP id xs7mr2451131igb.15.1327414043596;
	Tue, 24 Jan 2012 06:07:23 -0800 (PST)
Received: from frey (ip24-251-167-38.ph.ph.cox.net. [24.251.167.38])
	by mx.google.com with ESMTPS id g34sm59051618ibk.10.2012.01.24.06.07.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 Jan 2012 06:07:22 -0800 (PST)
Date: Tue, 24 Jan 2012 07:07:19 -0700
From: Christopher Larson <kergoth@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Message-ID: <48800CDABB26481EBC58C78EBD05294C@gmail.com>
In-Reply-To: <1327402068.2521.8.camel@babel.joshhome>
References: <1327402068.2521.8.camel@babel.joshhome>
X-Mailer: sparrow 1.5 (build 1043.1)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: overriding a class in custom layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jan 2012 14:07:24 -0000
Content-Type: multipart/alternative; boundary="4f1ebb17_66334873_5f44"

--4f1ebb17_66334873_5f44
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Ensure that your layer is before the other in BBLAYERS.

-- 
Christopher Larson


On Tuesday, January 24, 2012 at 3:47 AM, Joshua Immanuel wrote:

> Hello all,
> What is the preferred way of overriding an existing class in the 'meta'
> layer. I tried to add the existing class (say image_types.bbclass) to my
> custom layer and did some modifications to it. But while trying to build
> the image, only the original class gets inherited instead of the one in
> my custom layer. How do I force the bitbake to use the modified class
> file in the custom layer? 
> 
> Regards
> Joshua
> -- 
> Joshua Immanuel
> HiPro IT Solutions Private Limited
> http://hipro.co.in
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org (mailto:yocto@yoctoproject.org)
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 



--4f1ebb17_66334873_5f44
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div style=3D=22font-family: Helvetica; font-size: 13px; =
=22>Ensure that your layer is before the other in BBLAYERS.<br></div>
                <div><div><br></div><div>--&nbsp;</div><div>Christopher L=
arson</div><div><br></div></div>
                =20
                <p style=3D=22color: =23A0A0A8;=22>On Tuesday, January 24=
, 2012 at 3:47 AM, Joshua Immanuel wrote:</p>
                <blockquote type=3D=22cite=22 style=3D=22border-left-styl=
e:solid;border-width:1px;margin-left:0px;padding-left:10px;=22>
                    <span><div><div><div>Hello all,</div><div>	What is th=
e preferred way of overriding an existing class in the 'meta'</div><div>l=
ayer. I tried to add the existing class (say image=5Ftypes.bbclass) to my=
</div><div>custom layer and did some modifications to it. But while tryin=
g to build</div><div>the image, only the original class gets inherited in=
stead of the one in</div><div>my custom layer. How do I force the bitbake=
 to use the modified class</div><div>file in the custom layer=3F </div><d=
iv><br></div><div>Regards</div><div>Joshua</div><div>-- </div><div>Joshua=
 Immanuel</div><div>HiPro IT Solutions Private Limited</div><div><a href=3D=
=22http://hipro.co.in=22>http://hipro.co.in</a></div></div><div><div>=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F</div><div>yo=
cto mailing list</div><div><a href=3D=22mailto:yocto=40yoctoproject.org=22=
>yocto=40yoctoproject.org</a></div><div><a href=3D=22https://lists.yoctop=
roject.org/listinfo/yocto=22>https://lists.yoctoproject.org/listinfo/yoct=
o</a></div></div></div></span>
                =20
                =20
                =20
                =20
                </blockquote>
                =20
                <div>
                    <br>
                </div>
            

--4f1ebb17_66334873_5f44--
