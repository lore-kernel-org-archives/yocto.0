Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC269E00E38; Wed, 14 Dec 2016 21:11:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71F6FE00D9C
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 21:11:29 -0800 (PST)
X-Halon-ID: ee6f339c-c284-11e6-97f9-005056913f0f
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Thu, 15 Dec 2016 06:11:27 +0100 (CET)
MIME-Version: 1.0
Date: Thu, 15 Dec 2016 06:11:33 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>, Schnitzeltony <schnitzeltony@googlemail.com>,
	Andrei Gherzan <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <5881aaa6fd0724ed9101d0e6a79f814c@technux.se>
References: <1481193612-18179-1-git-send-email-schnitzeltony@googlemail.com>
	<CAMKF1srbGTypEP2FrNHHKxqdxg595EgdCxn=9dy9OVEA-s2PAw@mail.gmail.com>
	<7a0cc3acfeddd7ccc0de8c3b465d9f52@technux.se>
	<CALbNGRQ9s_9wYs-ytD8WZm6OhJNXJ31gWzgKi9OeSOcsHqUeRg@mail.gmail.com>
	<5881aaa6fd0724ed9101d0e6a79f814c@technux.se>
Message-ID: <480c2bae1103c9de6d2aca4368022175@technux.se>
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
X-List-Received-Date: Thu, 15 Dec 2016 05:11:32 -0000
Content-Type: multipart/alternative;
	boundary="=_3967450ab0205bc5c7926e596d9f0f33"

--=_3967450ab0205bc5c7926e596d9f0f33
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-12-13 06:39 skrev Petter Mabäcker: 

> 2016-12-13 00:55 skrev
Andreas Müller: 
> 
>> On Mon, Dec 12, 2016 at 11:33 PM, Petter Mabäcker
<petter@technux.se> wrote:
>> 
>>> 2016-12-12 06:21 skrev Khem Raj: On
Thu, Dec 8, 2016 at 2:40 AM, Andreas Müller
<schnitzeltony@googlemail.com> wrote: * no more required (version > 3.17
| > 4.3.x | > 4.4.5) * causes error with rt kernel I think this is ok to
apply now. Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
--- classes/linux-raspberrypi-base.bbclass | 15 --------------- 1 file
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
>> 
>>> I think you should go even one step further and revert the
entire commit merging this obsolete functionality: "git revert
4a4373c02d3d8355a2e5faa10af61450e5b093d8" .
>> BR Petter 
>> 
>> To be
honest: I have forked meta-raspberrypi and don't use it any
>> more.
Just wanted to be a good boy. So maybe you want to send the
>> revert
here?
>> 
>> Andreas
>> 
>>> 
> 
> Oh I see. Sure, I can send something
up. 
> 
> Petter Mabäcker
> 
> Technux <petter@technux.se>
>
www.technux.se

This wasn't as easy that I first thought. I totally
forgot about that Device Tree Overlays are assumed to be suffixed by
'-overlay.dtb' (4.1.x) or by '.dtbo' (4.4.9+). So it's not possible to
just revert the commit and handle some simple conflicts..

Andrei: I
think you can go ahead and merge this patch when fully verified. Then I
instead will see if I can do some cleanup in a later step. But at least
this patch simplifies things and solves the rt-issue.

BR Petter



Links:
------
[1] https://lists.yoctoproject.org/listinfo/yocto

--=_3967450ab0205bc5c7926e596d9f0f33
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-12-13 06:39 skrev Petter Mab&auml;cker:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<p>2016-12-13 00:55 skrev Andreas M&uuml;ller:</p>
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;">
<pre>On Mon, Dec 12, 2016 at 11:33 PM, Petter Mab&auml;cker &lt;<a href=3D"=
mailto:petter@technux.se">petter@technux.se</a>&gt; wrote:</pre>
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;">2016-12-12 06:21 skrev Khem Raj: On Thu, Dec=
 8, 2016 at 2:40 AM, Andreas M&uuml;ller &lt;<a href=3D"mailto:schnitzelton=
y@googlemail.com">schnitzeltony@googlemail.com</a>&gt; wrote: * no more req=
uired (version &gt; 3.17 | &gt; 4.3.x | &gt; 4.4.5) * causes error with rt =
kernel I think this is ok to apply now. Signed-off-by: Andreas M&uuml;ller =
&lt;<a href=3D"mailto:schnitzeltony@googlemail.com">schnitzeltony@googlemai=
l.com</a>&gt; --- classes/linux-raspberrypi-base.bbclass | 15 -------------=
-- 1 file changed, 15 deletions(-) diff --git a/classes/linux-raspberrypi-b=
ase.bbclass b/classes/linux-raspberrypi-base.bbclass index 3a6e33d..dc2330a=
 100644 --- a/classes/linux-raspberrypi-base.bbclass +++ b/classes/linux-ra=
spberrypi-base.bbclass @@ -14,21 +14,6 @@ def get_dts(d, ver=3DNone): from =
the kernel staging ''' ver =3D get_kernelversion_file(staging_dir) - if ver=
 is not None: - min_ver =3D ver.split('.', 3) - else: - return dts - - # Al=
ways turn off device tree support for kernel's &lt; 3.18 - try: - if int(mi=
n_ver[0]) &gt;=3D 4: - if (int(min_ver[1]) &lt; 4) or (int(min_ver[1]) =3D=
=3D 4 and int(min_ver[2]) &lt; 6): - dts =3D ' '.join([(re.sub(r'(.*)\.dtbo=
$', r'\1-overlay.dtb', x)) for x in dts.split()]) - elif int(min_ver[1]) &l=
t; 18: - dts =3D "" - except IndexError: - min_ver =3D None - return dts --=
 2.7.4 -- _______________________________________________ yocto mailing lis=
t <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> <a h=
ref=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctopr=
oject.org/listinfo/yocto</a></blockquote>
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;">I think you should go even one step further =
and revert the entire commit merging this obsolete functionality: "git reve=
rt 4a4373c02d3d8355a2e5faa10af61450e5b093d8" .</blockquote>
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;">BR Petter</blockquote>
<pre>To be honest: I have forked meta-raspberrypi and don't use it any
more. Just wanted to be a good boy. So maybe you want to send the
revert here?

Andreas
</pre>
</blockquote>
<p>Oh I see. Sure, I can send something up.</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</blockquote>
<div>
<pre>This wasn't as easy that I first thought. I totally forgot about that =
Device Tree Overlays are assumed to be suffixed by '-overlay.dtb' (4.1.x) o=
r by '.dtbo' (4.4.9+). So it's not possible to just revert the commit and h=
andle some simple conflicts..<br /><br />Andrei: I think you can go ahead a=
nd merge this patch when fully verified. Then I instead will see if I can d=
o some cleanup in a later step. But at least this patch simplifies things a=
nd solves the rt-issue.<br /><br />BR Petter</pre>
</div>
</body></html>

--=_3967450ab0205bc5c7926e596d9f0f33--
