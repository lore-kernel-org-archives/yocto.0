Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5351E00C59; Mon, 12 Dec 2016 21:39:28 -0800 (PST)
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
Received: from bin-vsp-out-02.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55B70E00C45
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 21:39:24 -0800 (PST)
X-Halon-ID: 7f5d6a3c-c0f6-11e6-bc68-005056917f90
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Tue, 13 Dec 2016 06:39:21 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 13 Dec 2016 06:39:27 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CALbNGRQ9s_9wYs-ytD8WZm6OhJNXJ31gWzgKi9OeSOcsHqUeRg@mail.gmail.com>
References: <1481193612-18179-1-git-send-email-schnitzeltony@googlemail.com>
	<CAMKF1srbGTypEP2FrNHHKxqdxg595EgdCxn=9dy9OVEA-s2PAw@mail.gmail.com>
	<7a0cc3acfeddd7ccc0de8c3b465d9f52@technux.se>
	<CALbNGRQ9s_9wYs-ytD8WZm6OhJNXJ31gWzgKi9OeSOcsHqUeRg@mail.gmail.com>
Message-ID: <5881aaa6fd0724ed9101d0e6a79f814c@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 13 Dec 2016 05:39:29 -0000
Content-Type: multipart/alternative;
	boundary="=_511233348999acb016eed934af9e31db"

--=_511233348999acb016eed934af9e31db
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-12-13 00:55 skrev Andreas Müller: 

> On Mon, Dec 12, 2016 at
11:33 PM, Petter Mabäcker <petter@technux.se> wrote:
> 
>> 2016-12-12
06:21 skrev Khem Raj: On Thu, Dec 8, 2016 at 2:40 AM, Andreas Müller
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
> 
>> I think you should go even one step further and revert the
entire commit merging this obsolete functionality: "git revert
4a4373c02d3d8355a2e5faa10af61450e5b093d8" .
> BR Petter 
> 
> To be
honest: I have forked meta-raspberrypi and don't use it any
> more. Just
wanted to be a good boy. So maybe you want to send the
> revert here?
>

> Andreas
> 
>> 

Oh I see. Sure, I can send something up. 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se



Links:
------
[1] https://lists.yoctoproject.org/listinfo/yocto

--=_511233348999acb016eed934af9e31db
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-12-13 00:55 skrev Andreas M&uuml;ller:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Mon, Dec 12, 2016 at 11:33 PM, Petter Mab&auml;cker &lt;<a href=3D"=
mailto:petter@technux.se">petter@technux.se</a>&gt; wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">2016-12-12 06:21 skrev Khem Raj: On T=
hu, Dec 8, 2016 at 2:40 AM, Andreas M&uuml;ller &lt;<a href=3D"mailto:schni=
tzeltony@googlemail.com">schnitzeltony@googlemail.com</a>&gt; wrote: * no m=
ore required (version &gt; 3.17 | &gt; 4.3.x | &gt; 4.4.5) * causes error w=
ith rt kernel I think this is ok to apply now. Signed-off-by: Andreas M&uum=
l;ller &lt;<a href=3D"mailto:schnitzeltony@googlemail.com">schnitzeltony@go=
oglemail.com</a>&gt; --- classes/linux-raspberrypi-base.bbclass | 15 ------=
--------- 1 file changed, 15 deletions(-) diff --git a/classes/linux-raspbe=
rrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass index 3a6e33d=
=2E.dc2330a 100644 --- a/classes/linux-raspberrypi-base.bbclass +++ b/class=
es/linux-raspberrypi-base.bbclass @@ -14,21 +14,6 @@ def get_dts(d, ver=3DN=
one): from the kernel staging ''' ver =3D get_kernelversion_file(staging_di=
r) - if ver is not None: - min_ver =3D ver.split('.', 3) - else: - return d=
ts - - # Always turn off device tree support for kernel's &lt; 3.18 - try: =
- if int(min_ver[0]) &gt;=3D 4: - if (int(min_ver[1]) &lt; 4) or (int(min_v=
er[1]) =3D=3D 4 and int(min_ver[2]) &lt; 6): - dts =3D ' '.join([(re.sub(r'=
(.*)\.dtbo$', r'\1-overlay.dtb', x)) for x in dts.split()]) - elif int(min_=
ver[1]) &lt; 18: - dts =3D "" - except IndexError: - min_ver =3D None - ret=
urn dts -- 2.7.4 -- _______________________________________________ yocto m=
ailing list <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.or=
g</a> <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lis=
ts.yoctoproject.org/listinfo/yocto</a></blockquote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">I think you should go even one step f=
urther and revert the entire commit merging this obsolete functionality: "g=
it revert 4a4373c02d3d8355a2e5faa10af61450e5b093d8" .</blockquote>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">BR Petter</blockquote>
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
</body></html>

--=_511233348999acb016eed934af9e31db--
