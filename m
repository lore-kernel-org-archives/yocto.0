Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E230AE00DC9; Mon, 15 Jan 2018 22:40:36 -0800 (PST)
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
Received: from bin-vsp-out-01.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF858E00B5F
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 22:40:34 -0800 (PST)
X-Halon-ID: 0a581246-fa88-11e7-ab1b-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPA
	id 0a581246-fa88-11e7-ab1b-005056917a89;
	Tue, 16 Jan 2018 07:39:45 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 16 Jan 2018 07:40:24 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Yocto <yocto@yoctoproject.org>, <ngthanh.vu94@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAGJSYqmEzCchhkysMB9ruCEzcJ6H7eSeuu3=LbcaLR_Jwe8KHg@mail.gmail.com>
References: <CAGJSYqmEzCchhkysMB9ruCEzcJ6H7eSeuu3=LbcaLR_Jwe8KHg@mail.gmail.com>
Message-ID: <475569826765f982629209ea5ba3e068@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: Remove libjpeg.so (default built even in core-image-minimal) from the rootfs when build yocto
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
X-List-Received-Date: Tue, 16 Jan 2018 06:40:37 -0000
Content-Type: multipart/alternative;
	boundary="=_377c932d929e7ba593a89b2e8bfc1b3b"

--=_377c932d929e7ba593a89b2e8bfc1b3b
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2018-01-16 05:28 skrev Nguyễn Thanh Vũ: 

> I have statically linked
the libjpeg of my own to the exe file, so I do not need the libjpeg.so
default built in the /lib of rootfs. How can I modify or specify in the
local.conf file so that I can remove that component? It takes quite a
lot of space. 
> 
> Thank you.

Hi Nguyễn, 

If you want (and no
dependencies dissallow it), you can remove the entire package providing
libjpeg.so from being installed with PACKAGE_EXCLUDE
(http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-PACKAGE_EXCLUDE).


If that`s not working you can for example use
ROOTFS_POSTPROCESS_COMMAND
(http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-ROOTFS_POSTPROCESS_COMMAND).
However that will require more work then just update a line in
local.conf. 

If you want to try it out you can simply append the image
recipe in a custom layer with below. 

 my_postprocess_function() {
 rm
-f ${IMAGE_ROOTFS}/path/to/libjpeg.so
 }
 ROOTFS_POSTPROCESS_COMMAND +=
"my_postprocess_function; "

BR Petter 

Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se
 

--=_377c932d929e7ba593a89b2e8bfc1b3b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2018-01-16 05:28 skrev Nguy=E1=BB=85n Thanh V=C5=A9:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<div dir=3D"ltr">I have statically linked the libjpeg of my own to the exe =
file, so I do not need the libjpeg.so default built in the /lib of rootfs=
=2E How can I modify or specify in the local.conf file so that I can remove=
 that component? It takes quite a lot of space.
<div>&nbsp;</div>
<div>Thank you.</div>
</div>
</blockquote>
<p>Hi Nguy=E1=BB=85n,</p>
<p>If you want (and no dependencies dissallow it), you can remove the entir=
e package providing libjpeg.so from being installed with PACKAGE_EXCLUDE (h=
ttp://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-PACK=
AGE_EXCLUDE).</p>
<p>If that`s not working you can for example use ROOTFS_POSTPROCESS_COMMAND=
 (http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-R=
OOTFS_POSTPROCESS_COMMAND). However that will require more work then just u=
pdate a line in local.conf.<span class=3D"permalink"></span></p>
<p>If you want to try it out you can simply append the image recipe in a cu=
stom layer with below.</p>
<pre class=3D"literallayout">     my_postprocess_function() {
        rm -f  ${IMAGE_ROOTFS}/path/to/libjpeg.so
     }
     ROOTFS_POSTPROCESS_COMMAND +=3D "my_postprocess_function; "</pre>
<p>&nbsp;</p>
<p>BR Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_377c932d929e7ba593a89b2e8bfc1b3b--
