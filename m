Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60872E00E6A; Tue, 16 Jan 2018 00:11:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECC34E00D32
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 00:11:34 -0800 (PST)
X-Halon-ID: be0322c3-fa94-11e7-ab1b-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPA
	id be0322c3-fa94-11e7-ab1b-005056917a89;
	Tue, 16 Jan 2018 09:10:42 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 16 Jan 2018 09:11:19 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: =?UTF-8?Q?Nguy=E1=BB=85n_Thanh_V=C5=A9?= <ngthanh.vu94@gmail.com>, Yocto
	<yocto@yoctoproject.org>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAGJSYqk+PQDg+8vZ_jpnJQKDVpxDM_mNQ9LMS6JptjsSfW2rrw@mail.gmail.com>
References: <CAGJSYqmEzCchhkysMB9ruCEzcJ6H7eSeuu3=LbcaLR_Jwe8KHg@mail.gmail.com>
	<475569826765f982629209ea5ba3e068@technux.se>
	<CAGJSYqk+PQDg+8vZ_jpnJQKDVpxDM_mNQ9LMS6JptjsSfW2rrw@mail.gmail.com>
Message-ID: <fe6967465644f853cbb070b2eecc2bca@technux.se>
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
X-List-Received-Date: Tue, 16 Jan 2018 08:11:36 -0000
Content-Type: multipart/alternative;
	boundary="=_c3cd406cb4cbb7ccab9041ace7a5b21c"

--=_c3cd406cb4cbb7ccab9041ace7a5b21c
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

My guess would be that the package name to exclude is libjpeg-turbo
. But it seems to provide jpeg-tools as well, so that can be good to
have in mind when elaborating with excluding this package. 

BR Petter


2018-01-16 07:46 skrev Nguyễn Thanh Vũ: 

> I know that I need to use
PACKAGE_EXCLUDE, but I have no idea what is the package name of libjpeg
... Any clue? 
> 
> On Tue, Jan 16, 2018 at 1:40 PM, Petter Mabäcker
<petter@technux.se> wrote:
> 
>> 2018-01-16 05:28 skrev Nguyễn Thanh Vũ:

>> 
>>> I have statically linked the libjpeg of my own to the exe file,
so I do not need the libjpeg.so default built in the /lib of rootfs. How
can I modify or specify in the local.conf file so that I can remove that
component? It takes quite a lot of space. 
>>> 
>>> Thank you.
>> 
>> Hi
Nguyễn, 
>> 
>> If you want (and no dependencies dissallow it), you can
remove the entire package providing libjpeg.so from being installed with
PACKAGE_EXCLUDE
(http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-PACKAGE_EXCLUDE
[2]). 
>> 
>> If that`s not working you can for example use
ROOTFS_POSTPROCESS_COMMAND
(http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-ROOTFS_POSTPROCESS_COMMAND
[3]). However that will require more work then just update a line in
local.conf. 
>> 
>> If you want to try it out you can simply append the
image recipe in a custom layer with below. 
>> 
>>
my_postprocess_function() {
>> rm -f
${IMAGE_ROOTFS}/path/to/libjpeg.so
>> }
>> ROOTFS_POSTPROCESS_COMMAND +=
"my_postprocess_function; "
>> 
>> BR Petter 
>> 
>> Petter Mabäcker
>>

>> Technux <petter@technux.se>
>> www.technux.se [1]



Links:
------
[1] http://www.technux.se
[2]
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-PACKAGE_EXCLUDE
[3]
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-ROOTFS_POSTPROCESS_COMMAND

--=_c3cd406cb4cbb7ccab9041ace7a5b21c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>My guess would be that the package name to exclude is libjpeg-turbo . Bu=
t it seems to provide jpeg-tools as well, so that can be good to have in mi=
nd when elaborating with excluding this package.</p>
<p>BR Petter</p>
<p>2018-01-16 07:46 skrev Nguy=E1=BB=85n Thanh V=C5=A9:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<div dir=3D"ltr">I know that I need to use PACKAGE_EXCLUDE, but I have no i=
dea what is the package name of libjpeg ... Any clue?</div>
<div class=3D"gmail_extra"><br />
<div class=3D"gmail_quote">On Tue, Jan 16, 2018 at 1:40 PM, Petter Mab&auml=
;cker <span>&lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&=
gt;</span> wrote:<br />
<blockquote class=3D"gmail_quote" style=3D"margin: 0  0  0  .8ex; border-le=
ft: 1px  #ccc  solid; padding-left: 1ex;"><span style=3D"text-decoration: u=
nderline;"></span>
<div style=3D"font-family: Helvetica,Arial,sans-serif;">
<p>2018-01-16 05:28 skrev Nguy=E1=BB=85n Thanh V=C5=A9:</p>
<blockquote style=3D"padding-left: 5px; border-left: #1010ff  2px  solid; m=
argin-left: 5px; width: 100%;">
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
e package providing libjpeg.so from being installed with PACKAGE_EXCLUDE (<=
a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.ht=
ml#var-PACKAGE_EXCLUDE">http://www.yoctoproject.org/docs/current/ref-manual=
/ref-manual.html#var-PACKAGE_EXCLUDE</a>).</p>
<p>If that`s not working you can for example use ROOTFS_POSTPROCESS_COMMAND=
 (<a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-manual=
=2Ehtml#var-ROOTFS_POSTPROCESS_COMMAND">http://www.yoctoproject.org/docs/cu=
rrent/ref-manual/ref-manual.html#var-ROOTFS_POSTPROCESS_COMMAND</a>). Howev=
er that will require more work then just update a line in local.conf.<span =
class=3D"m_-3971509897248760897permalink"></span></p>
<p>If you want to try it out you can simply append the image recipe in a cu=
stom layer with below.</p>
<pre class=3D"m_-3971509897248760897literallayout">     my_postprocess_func=
tion() {
        rm -f  ${IMAGE_ROOTFS}/path/to/libjpeg.so
     }
     ROOTFS_POSTPROCESS_COMMAND +=3D "my_postprocess_function; "</pre>
<p>&nbsp;</p>
<p>BR Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;<a href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt;
<a href=3D"http://www.technux.se">www.technux.se</a></pre>
</div>
</div>
</blockquote>
</div>
</div>
</blockquote>
</body></html>

--=_c3cd406cb4cbb7ccab9041ace7a5b21c--
