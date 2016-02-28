Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADE5EE00C91; Sun, 28 Feb 2016 05:44:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AFF1E00C91
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 05:44:38 -0800 (PST)
X-Halon-ID: 653c978c-de21-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Sun, 28 Feb 2016 14:44:31 +0100 (CET)
MIME-Version: 1.0
Date: Sun, 28 Feb 2016 14:44:36 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <20160228110222.GA2087@resin.home>
References: <1452789643-17903-1-git-send-email-petter@technux.se>
	<1452789643-17903-4-git-send-email-petter@technux.se>
	<decadab49c1ce664ee1e7b5e52cbfcaa@technux.se>
	<20160228105158.GF12618@resin.home> <20160228110222.GA2087@resin.home>
Message-ID: <0ed4c3bfa9af685cd6f51bcb4b0d3e57@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/7] linux-raspberrypi: Update 4.1 recipe to 4.1.15
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
X-List-Received-Date: Sun, 28 Feb 2016 13:44:42 -0000
Content-Type: multipart/alternative;
	boundary="=_dfcb20309331a56d2ab7db4159693ef9"

--=_dfcb20309331a56d2ab7db4159693ef9
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-02-28 12:02 skrev Andrei Gherzan: 

> On Sun, Feb 28, 2016 at
11:51:58AM +0100, Andrei Gherzan wrote:
> 
>> On Sun, Feb 28, 2016 at
08:56:33AM +0100, Petter Mabäcker wrote: 
>> 
>>> 2016-01-14 17:40 skrev
Petter Mab?cker: [Support #69] Signed-off-by: Petter Mab?cker
<[1]petter@technux.se> --- recipes-kernel/linux/linux-raspberrypi_4.1.bb
| 4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-) diff --git
a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linu
x/linux-raspberrypi_4.1.bb index 3a3cf40..cae459a 100644 ---
a/recipes-kernel/linux/linux-raspberrypi_4.1.bb +++
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb @@ -1,6 +1,6 @@
-LINUX_VERSION ?= "4.1.10" +LINUX_VERSION ?= "4.1.15" -SRCREV =
"b74df9228c27f55361c065bc5dbfba88861cc771" +SRCREV =
"02a8ee530e32b08e5df44f10e24d5fd82bb960e3" SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y "
require linux-raspberrypi.inc Hi Andrei, This commit can be skipped,
since Khem have done an even newer update of the 4.1 kernel (4.1.10 -->
4.1.17) in the large series of commits from yesterday
(https://lists.yoctoproject.org/pipermail/yocto/2016-February/028754.ht
[1] ml). Do you want me to send an updated version of this series of
commit without it or not? BR Petter References 1.
mailto:petter@technux.se
>> Thanks Peter. No need to bother. I'll keep
in mind not to pull this patch.
> 
> Petter,
> 
> Actually I do have a
request. Could you please send the v2 again (or a v3)
> cause even if
they are on the ml archive I don't have it in my mailbox (this
> kinda
worries me). Sorry for this and thank you in advance.
> 
> --
> Andrei
Gherzan

I will send up a v3 with the kernel bump commit removed (and
also a fix for a minor typo in the README..). 

BR Petter 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se



Links:
------
[1]
https://lists.yoctoproject.org/pipermail/yocto/2016-February/028754.ht

--=_dfcb20309331a56d2ab7db4159693ef9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-02-28 12:02 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Sun, Feb 28, 2016 at 11:51:58AM +0100, Andrei Gherzan wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On Sun, Feb 28, 2016 at 08:56:33AM +0=
100, Petter Mab&auml;cker wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">2016-01-14 17:40 skrev Petter Mab?cke=
r: [Support #69] Signed-off-by: Petter Mab?cker &lt;[1]<a href=3D"mailto:pe=
tter@technux.se">petter@technux.se</a>&gt; --- recipes-kernel/linux/linux-r=
aspberrypi_4.1.bb | 4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-) =
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel=
/linu x/linux-raspberrypi_4.1.bb index 3a3cf40..cae459a 100644 --- a/recipe=
s-kernel/linux/linux-raspberrypi_4.1.bb +++ b/recipes-kernel/linux/linux-ra=
spberrypi_4.1.bb @@ -1,6 +1,6 @@ -LINUX_VERSION ?=3D "4.1.10" +LINUX_VERSIO=
N ?=3D "4.1.15" -SRCREV =3D "b74df9228c27f55361c065bc5dbfba88861cc771" +SRC=
REV =3D "02a8ee530e32b08e5df44f10e24d5fd82bb960e3" SRC_URI =3D "git://githu=
b.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.1.y " require lin=
ux-raspberrypi.inc Hi Andrei, This commit can be skipped, since Khem have d=
one an even newer update of the 4.1 kernel (4.1.10 --&gt; 4.1.17) in the la=
rge series of commits from yesterday (<a href=3D"https://lists.yoctoproject=
=2Eorg/pipermail/yocto/2016-February/028754.ht">https://lists.yoctoproject=
=2Eorg/pipermail/yocto/2016-February/028754.ht</a> ml). Do you want me to s=
end an updated version of this series of commit without it or not? BR Pette=
r References 1. mailto:<a href=3D"mailto:petter@technux.se">petter@technux=
=2Ese</a></blockquote>
Thanks Peter. No need to bother. I'll keep in mind not to pull this patch=
=2E</blockquote>
<pre>Petter,

Actually I do have a request. Could you please send the v2 again (or a v3)
cause even if they are on the ml archive I don't have it in my mailbox (thi=
s
kinda worries me). Sorry for this and thank you in advance.

--
Andrei Gherzan
</pre>
</blockquote>
<p>I will send up a v3 with the kernel bump commit removed (and also a fix =
for a minor typo in the README..).</p>
<p>BR Petter</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_dfcb20309331a56d2ab7db4159693ef9--
