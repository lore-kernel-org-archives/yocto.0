Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3BAAE00961; Mon, 12 Dec 2016 14:34:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Dec 2016 14:34:18 PST
Received: from bin-vsp-out-02.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44396E00828
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 14:34:18 -0800 (PST)
X-Halon-ID: f6dd9f47-c0ba-11e6-bc68-005056917f90
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Mon, 12 Dec 2016 23:33:11 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 12 Dec 2016 23:33:18 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>, <schnitzeltony@googlemail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAMKF1srbGTypEP2FrNHHKxqdxg595EgdCxn=9dy9OVEA-s2PAw@mail.gmail.com>
References: <1481193612-18179-1-git-send-email-schnitzeltony@googlemail.com>
	<CAMKF1srbGTypEP2FrNHHKxqdxg595EgdCxn=9dy9OVEA-s2PAw@mail.gmail.com>
Message-ID: <7a0cc3acfeddd7ccc0de8c3b465d9f52@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: remove version hack
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 Dec 2016 22:34:21 -0000
Content-Type: multipart/alternative;
	boundary="=_b6c4cb0c12ab2bf7f50483a505ed1d46"

--=_b6c4cb0c12ab2bf7f50483a505ed1d46
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-12-12 06:21 skrev Khem Raj: 

> On Thu, Dec 8, 2016 at 2:40 AM,
Andreas Müller
> <schnitzeltony@googlemail.com> wrote:
> 
>> * no more
required (version > 3.17 | > 4.3.x | > 4.4.5) * causes error with rt
kernel
> 
> I think this is ok to apply now.
> 
>> Signed-off-by:
Andreas Müller <schnitzeltony@googlemail.com> ---
classes/linux-raspberrypi-base.bbclass | 15 --------------- 1 file
changed, 15 deletions(-) diff --git
a/classes/linux-raspberrypi-base.bbclass
b/classes/linux-raspberrypi-base.bbclass index 3a6e33d..dc2330a 100644
--- a/classes/linux-raspberrypi-base.bbclass +++
b/classes/linux-raspberrypi-base.bbclass @@ -14,21 +14,6 @@ def
get_dts(d, ver=None): from the kernel staging ''' ver =
get_kernelversion_file(staging_dir) - if ver is not None: - min_ver =
ver.split('.', 3) - else: - return dts - - # Always turn off device tree
support for kernel's < 3.18 - try: - if int(min_ver[0]) >= 4: - if
(int(min_ver[1]) < 4) or (int(min_ver[1]) == 4 and int(min_ver[2]) < 6):
- dts = ' '.join([(re.sub(r'(.*).dtbo$', r'1-overlay.dtb', x)) for x in
dts.split()]) - elif int(min_ver[1]) < 18: - dts = "" - except
IndexError: - min_ver = None - return dts -- 2.7.4 --
_______________________________________________ yocto mailing list
yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
[1]

I think you should go even one step further and revert the entire
commit merging this obsolete functionality: "git revert
4a4373c02d3d8355a2e5faa10af61450e5b093d8" . 

BR Petter


Links:
------
[1] https://lists.yoctoproject.org/listinfo/yocto

--=_b6c4cb0c12ab2bf7f50483a505ed1d46
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-12-12 06:21 skrev Khem Raj:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Thu, Dec 8, 2016 at 2:40 AM, Andreas M&uuml;ller
&lt;<a href=3D"mailto:schnitzeltony@googlemail.com">schnitzeltony@googlemai=
l.com</a>&gt; wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">* no more required (version &gt; 3.17=
 | &gt; 4.3.x | &gt; 4.4.5) * causes error with rt kernel</blockquote>
<pre>I think this is ok to apply now.</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">Signed-off-by: Andreas M&uuml;ller &l=
t;<a href=3D"mailto:schnitzeltony@googlemail.com">schnitzeltony@googlemail=
=2Ecom</a>&gt; --- classes/linux-raspberrypi-base.bbclass | 15 ------------=
--- 1 file changed, 15 deletions(-) diff --git a/classes/linux-raspberrypi-=
base.bbclass b/classes/linux-raspberrypi-base.bbclass index 3a6e33d..dc2330=
a 100644 --- a/classes/linux-raspberrypi-base.bbclass +++ b/classes/linux-r=
aspberrypi-base.bbclass @@ -14,21 +14,6 @@ def get_dts(d, ver=3DNone): from=
 the kernel staging ''' ver =3D get_kernelversion_file(staging_dir) - if ve=
r is not None: - min_ver =3D ver.split('.', 3) - else: - return dts - - # A=
lways turn off device tree support for kernel's &lt; 3.18 - try: - if int(m=
in_ver[0]) &gt;=3D 4: - if (int(min_ver[1]) &lt; 4) or (int(min_ver[1]) =3D=
=3D 4 and int(min_ver[2]) &lt; 6): - dts =3D ' '.join([(re.sub(r'(.*)\.dtbo=
$', r'\1-overlay.dtb', x)) for x in dts.split()]) - elif int(min_ver[1]) &l=
t; 18: - dts =3D "" - except IndexError: - min_ver =3D None - return dts --=
 2.7.4 -- _______________________________________________ yocto mailing lis=
t <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> <a h=
ref=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctopr=
oject.org/listinfo/yocto</a></blockquote>
</blockquote>
<p>I think you should go even one step further and revert the entire commit=
 merging this obsolete functionality: "git revert 4a4373c02d3d8355a2e5faa10=
af61450e5b093d8" .</p>
<p>BR Petter</p>
</body></html>

--=_b6c4cb0c12ab2bf7f50483a505ed1d46--
