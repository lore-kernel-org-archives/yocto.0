Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41D7AE00E10; Thu, 30 Jun 2016 02:04:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D195BE00D2D
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 02:04:06 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id c2so101083398vkg.1
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 02:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NXrvBCK+eZfs8pXOvfHJwoGWdaj/wb/aof36fvc8hLc=;
	b=nB/AcdV4JWebCp2nMUPYBb5QxfkCF6m4P5gSD8N6kjz98mwiFNajCnjz9lrNF7XIWG
	zzUHZOe+51YgLSWhL2dlyrVbZdEa90LbsT9iy/fg8wldDTYvKxYvqdIlFzAdmv7oWHbV
	aWfy87soSOyFSHjsSnqSV3kebjYMACceiYptHMcd7cid79VKVnoP5IVi34Xilr/L55f6
	O1DcxurFvTEBv+m2InNauuCIC51wyGCkLx875faXsXeQnV9DefKgW6pKJ+b4dv/fbhSP
	oROnjNq3fzZtxax1gIpPGmL2t+rydjRSbeF7h6armCCZo5iSLTIxlZWOENlzn45zD3uL
	WggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NXrvBCK+eZfs8pXOvfHJwoGWdaj/wb/aof36fvc8hLc=;
	b=bbq/z5BwOdrxdPTTNdnOJVDr7khzktt5kwbVSwx74EGeSfnKS+OHkMtzMrfzNbz3Qh
	h1X0A0OgKFAg5nvxT8JQwBTgetV0EcD8C4MJRx+b3EegxG7blmnFoNZHKeHO1eC8rmWa
	wuGUIm1xpBePx5lqWzY9XkLbg1qhEaeB6YNR8DZOXWMqBOWgOzXWDeSJ/lVfMVB3gSOl
	3OcxehFLtqOMK6oSLQvAJlrZynl2IoAeP2G99H9kRL0JJmIvZS+va/v0NHIWqqMZd/2U
	tgRca1AjDXwpzpsyaxekgAnZSCwCF27rvUfjaXnPHyOAZo8/cqPegKRZkfaqqQ7gkYs1
	I5CQ==
X-Gm-Message-State: ALyK8tKj2BIp26c/ZxtutpPdVztd6B7cKmpH1zgakjot9UDO4o3wg8dZy0KvOKRVHhNZ99VZyJzJ3wVR+YKdIw==
X-Received: by 10.176.1.17 with SMTP id 17mr5148735uak.154.1467277445473; Thu,
	30 Jun 2016 02:04:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.106 with HTTP; Thu, 30 Jun 2016 02:04:05 -0700 (PDT)
In-Reply-To: <DB5PR06MB157369E58A396E97FE19504FCF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
References: <DB5PR06MB157369E58A396E97FE19504FCF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Thu, 30 Jun 2016 11:04:05 +0200
Message-ID: <CAEjjRe+E3-yR1dbg2tRn1JF1KNPFqk9q7vL+WVj42-JOiJm8Pg@mail.gmail.com>
To: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package build files not getting copied to sysroots directory
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
X-List-Received-Date: Thu, 30 Jun 2016 09:04:08 -0000
Content-Type: multipart/alternative; boundary=001a113cfa70ecad2b05367b2639

--001a113cfa70ecad2b05367b2639
Content-Type: text/plain; charset=UTF-8

Hi,

Check what files are added to the package of your distribution (deb, ipk )
Variable FILES_ defines what files should be added to the packages ( -dev,
-dbg, -doc ) which are installed in sysroot.

bitbake.conf specify default files which should be packed.

You can check bitbake -e <you_package> &> output.log , for FILES_  variable
and check what files are search and where.

Probably FILES_${PN} +=  would help. But that would be mi first try to find
root cause.

Also check temp/ log.do_   files


On Thu, Jun 30, 2016 at 9:51 AM, Gujulan Elango, Hari Prasath (H.) <
hgujulan@visteon.com> wrote:

> Hello
>
>
> I am trying to integrate the meta-ivi layer into my distribution. When I
> am trying to build the audiomanager, some dependent package do_configure()
> fails. It looks for some packageconfig files(.pc) file in the
> tmp/sysroots/<machine_specifid_directory>, but this file is not there.
>
>
> When I look into the dependent package build directory in
> tmp/work/<arch-specific_dir>/<package_name>/, I am able to see the files in
> the build output(libraries and .pc files). Any reason why it is not getting
> copied into tmp/sysroots/ directory ? Do I need specify it somewhere
> explicitly do get this done ?
>
>
> Thanks & Regards,
>
> Hari Prasath
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113cfa70ecad2b05367b2639
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>Check what =
files are added to the package of your distribution (deb, ipk ) <br></div>V=
ariable FILES_ defines what files should be added to the packages ( -dev, -=
dbg, -doc ) which are installed in sysroot.<br><br></div>bitbake.conf speci=
fy default files which should be packed.<br><br></div>You can check bitbake=
 -e &lt;you_package&gt; &amp;&gt; output.log , for FILES_=C2=A0 variable an=
d check what files are search and where.<br><br></div>Probably FILES_${PN} =
+=3D=C2=A0 would help. But that would be mi first try to find root cause.<b=
r><br></div>Also check temp/ log.do_=C2=A0=C2=A0 files<br><div><div><div><d=
iv><br></div></div></div></div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Thu, Jun 30, 2016 at 9:51 AM, Gujulan Elango, Hari P=
rasath (H.) <span dir=3D"ltr">&lt;<a href=3D"mailto:hgujulan@visteon.com" t=
arget=3D"_blank">hgujulan@visteon.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p>Hello</p>
<p><br>
</p>
<p>I am trying to integrate the meta-ivi layer into my distribution. When I=
 am trying to build the audiomanager, some dependent package do_configure()=
 fails. It looks for some packageconfig files(.pc) file in the tmp/sysroots=
/&lt;machine_specifid_directory&gt;, but
 this file is not there.</p>
<p><br>
</p>
<p>When I look into the dependent package build directory in tmp/work/&lt;a=
rch-specific_dir&gt;/&lt;package_name&gt;/, I am able to see the files in t=
he build output(libraries and .pc files). Any reason why it is not getting =
copied into tmp/sysroots/ directory ? Do I need
 specify it somewhere explicitly do get this done ?<br>
</p>
<p><br>
</p>
<div>Thanks &amp; Regards,
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px;margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a113cfa70ecad2b05367b2639--
