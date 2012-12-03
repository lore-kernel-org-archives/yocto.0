Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 370CCE00533
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 11:37:39 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id dr12so1490141wgb.11
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2012 11:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=cnDpfxSRdVRfQNGwsd/mcHX4TsJonPgvl+GZn33zsLk=;
	b=q6349anB+y2c4xy/Qp2rBb2NYJqWKjSrMkUlr2Ne20PixcIkOCOy/Tt2AS1UxuI5G0
	7wl+mbq/rKrMEhqOtJeFhvGAsiT4+lHAXMdy0vp/EaJ0ZxFMLHm4rOGfLmkTiDy8ONBn
	oi+tav2RqdeCthT8LjZsqKhSnKzQM5b+2Pv7hDNkdC74QicEAbU/q3flVIcZ10knHWw8
	qp/WMnr6P8yHhX/qlKRy4snNgxh62ZFIpzu0lwq0PciEL3k8cqFIytQDc81MtlnFSjpk
	LxNnLQ0vRIpMDyaRn1ceEgnY0TC3SAqqi6R1zC2JWyJeAgSd8gbpzhM8Fe/KLTgEaFZR
	Ra7Q==
MIME-Version: 1.0
Received: by 10.180.72.232 with SMTP id g8mr367686wiv.0.1354563458006; Mon, 03
	Dec 2012 11:37:38 -0800 (PST)
Received: by 10.194.82.231 with HTTP; Mon, 3 Dec 2012 11:37:37 -0800 (PST)
In-Reply-To: <50BCF9EE.7020205@mlbassoc.com>
References: <CAE8H0+UH1A4hGLM4hkX_qvw-BD4Zt4eg_69G7OqyxmaSJJmRHA@mail.gmail.com>
	<50BCF9EE.7020205@mlbassoc.com>
Date: Mon, 3 Dec 2012 14:37:37 -0500
Message-ID: <CAE8H0+VUBEsUaFWVq2dA1XSPa=eyTbqEPKWQqFA3DqPg23d9EQ@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dhcp-server and init scripts
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
X-List-Received-Date: Mon, 03 Dec 2012 19:37:39 -0000
Content-Type: multipart/alternative; boundary=f46d043c8194bd7f2704cff7e185

--f46d043c8194bd7f2704cff7e185
Content-Type: text/plain; charset=ISO-8859-1

Thanks, Gary!  That did the trick.

John


On Mon, Dec 3, 2012 at 2:13 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2012-12-03 12:01, r10kindsofpeople wrote:
>
>> I seem to have figured out how to add the dhcp-server to my image,
>> including my own dhcpd.conf and default-server files by creating a
>> "dhcp_4.2.4-P1.bbappend" recipe.  Everything
>> works, except the dhcp-server doesn't run on boot.
>>
>> If I login and run "update-rc.d dhcp-server defaults" on the target, then
>> it creates the entries in /etc/rc0.d (etc) and the service starts on the
>> next boot.
>>
>> The question is, how can I get bitbake to create those entries when it
>> creates the image?  I'm open to completely different ways of going about
>> this as well.  Looking at other
>> recipes, I thought this recipe would do, but it doesn't:
>>
>> {named dhcp_4.2.4-P1.bbappend}
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>> inherit update-rc.d
>>
>> INITSCRIPT_NAME = "dhcp-server"
>> INITSCRIPT_PARAMS = "defaults"
>>
>> # Not sure this is needed, since I'm not adding files, just replacing the
>> default copies
>> SRC_URI += "file://dhcpd.conf \
>>                       file://default-server \
>>                       "
>> {end file}
>>
>> I'm using the 8.0 "danny" release with Crown-bay BSP.  The "layer.conf"
>> file includes IMAGE_INSTALL_append = " dhcp-server" (among other things).
>>
>> Thanks in advance for any assistance you can offer,
>>
>
> You just missed one piece.  I have this working using these extra lines in
> my .bbappend:
>
> inherit update-rc.d
> INITSCRIPT_PACKAGES = "dhcp-server"
> INITSCRIPT_NAME = "dhcp-server"
> INITSCRIPT_PARAMS = "start 50 S . stop 50 0 6 1 ."
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--f46d043c8194bd7f2704cff7e185
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks, Gary! =A0That did the trick.<div><br></div><div>John</div><div clas=
s=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Dec 3, 2012 at=
 2:13 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc=
.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 2=
012-12-03 12:01, r10kindsofpeople wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I seem to have figured out how to add the dhcp-server to my image, includin=
g my own dhcpd.conf and default-server files by creating a &quot;dhcp_4.2.4=
-P1.bbappend&quot; recipe. =A0Everything<br>
works, except the dhcp-server doesn&#39;t run on boot.<br>
<br>
If I login and run &quot;update-rc.d dhcp-server defaults&quot; on the targ=
et, then it creates the entries in /etc/rc0.d (etc) and the service starts =
on the next boot.<br>
<br>
The question is, how can I get bitbake to create those entries when it crea=
tes the image? =A0I&#39;m open to completely different ways of going about =
this as well. =A0Looking at other<br>
recipes, I thought this recipe would do, but it doesn&#39;t:<br>
<br>
{named dhcp_4.2.4-P1.bbappend}<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
inherit update-rc.d<br>
<br>
INITSCRIPT_NAME =3D &quot;dhcp-server&quot;<br>
INITSCRIPT_PARAMS =3D &quot;defaults&quot;<br>
<br>
# Not sure this is needed, since I&#39;m not adding files, just replacing t=
he default copies<br>
SRC_URI +=3D &quot;file://dhcpd.conf \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://default-server \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
{end file}<br>
<br>
I&#39;m using the 8.0 &quot;danny&quot; release with Crown-bay BSP. =A0The =
&quot;layer.conf&quot; file includes IMAGE_INSTALL_append =3D &quot; dhcp-s=
erver&quot; (among other things).<br>
<br>
Thanks in advance for any assistance you can offer,<br>
</blockquote>
<br></div></div>
You just missed one piece. =A0I have this working using these extra lines i=
n my .bbappend:<br>
<br>
inherit update-rc.d<br>
INITSCRIPT_PACKAGES =3D &quot;dhcp-server&quot;<br>
INITSCRIPT_NAME =3D &quot;dhcp-server&quot;<br>
INITSCRIPT_PARAMS =3D &quot;start 50 S . stop 50 0 6 1 .&quot;<span class=
=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--f46d043c8194bd7f2704cff7e185--
