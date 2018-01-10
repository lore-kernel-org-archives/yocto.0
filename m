Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0025E00DFA; Tue,  9 Jan 2018 23:21:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DABDE00D94
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 23:21:49 -0800 (PST)
X-Halon-ID: cfbcb6e9-f5d6-11e7-ab14-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPA
	id cfbcb6e9-f5d6-11e7-ab14-005056917a89;
	Wed, 10 Jan 2018 08:21:01 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 10 Jan 2018 08:21:34 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Yocto <yocto@yoctoproject.org>, <peter.spierenburg@nautel.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <MWHPR13MB1584B447167EE2B7AE940AC49E100@MWHPR13MB1584.namprd13.prod.outlook.com>
References: <MWHPR13MB1584B447167EE2B7AE940AC49E100@MWHPR13MB1584.namprd13.prod.outlook.com>
Message-ID: <17fc92ed93ac9c96499736993604323c@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: What is the procedure for creating a board support package?
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
X-List-Received-Date: Wed, 10 Jan 2018 07:21:51 -0000
Content-Type: multipart/alternative;
	boundary="=_273d60d6cf9b042d7e0d8a4089ab6d83"

--=_273d60d6cf9b042d7e0d8a4089ab6d83
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2018-01-09 19:38 skrev Peter Spierenburg: 

> I'm trying to follow
the instructions at: 
> 
>
http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html#creating-a-new-bsp-layer-using-the-yocto-bsp-script
[1] 
> 
> I followed the prompts exactly as specified (although the SMP
support prompt did not appear), and I chose the default 4.12 kernel
(presumably the guide is slightly out of date). 
> 
> I included the
generated bsp in bblayers.conf as indicated. 
> 
> I invoked: 
> 
>
bitbake core-image-minimal
> However, the resulting build was intel
based, and not arm as one might expect since I asked for ARM when
prompted by the yocto-bsp script.Is there a more hands-on document that
I could be following? 
> 
> Peter.
> 
> This communication, including
any attached documentation, is intended only for the person or entity to
which it is addressed, and may contain confidential, personal, and/or
privileged information. Any unauthorized disclosure, copying, or taking
action on the contents is strictly prohibited. If you have received this
message in error, please contact us immediately so we may correct our
records. Please then delete or destroy the original transmission and any
subsequent reply. Thank you.

Hi Peter, 

Have you set MACHINE = "myarm"
in conf/local.conf in your project? That is required in order to enable
full usage of your new bsp. If not it will by default be set to qemux86.


Also note that you can type arm instead of qemu when doing it for the
real target ($ ./yocto-bsp create myarm arm) 

BR Petter 

Petter
Mabäcker

Technux <petter@technux.se>
www.technux.se



Links:
------
[1]
http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html#creating-a-new-bsp-layer-using-the-yocto-bsp-script

--=_273d60d6cf9b042d7e0d8a4089ab6d83
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2018-01-09 19:38 skrev Peter Spierenburg:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: #000000;"=
 dir=3D"ltr">
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols; margin-top: 0px; margin-bottom: 0px;">I'm trying to =
follow the instructions at:</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols; margin-top: 0px; margin-bottom: 0px;"><a id=3D"LPlnk=
242364" class=3D"OWAAutoLink" href=3D"http://www.yoctoproject.org/docs/curr=
ent/bsp-guide/bsp-guide.html#creating-a-new-bsp-layer-using-the-yocto-bsp-s=
cript">http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html#cr=
eating-a-new-bsp-layer-using-the-yocto-bsp-script</a></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols; margin-top: 0px; margin-bottom: 0px;">I followed the=
 prompts exactly as specified (although the SMP support prompt did not appe=
ar), and I chose the default 4.12 kernel (presumably the guide is slightly =
out of date).</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols; margin-top: 0px; margin-bottom: 0px;">I&nbsp;include=
d the generated bsp in bblayers.conf as indicated.</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, 'Apple =
Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android=
 Emoji', EmojiSymbols; margin-top: 0px; margin-bottom: 0px;">&nbsp;</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">I invoked:</p>
<pre class=3D"literallayout" style=3D"font-family: Calibri, Helvetica, sans=
-serif, EmojiFont, 'Apple Color Emoji', 'Segoe UI Emoji', NotoColorEmoji, '=
Segoe UI Symbol', 'Android Emoji', EmojiSymbols; overflow: auto; color: #33=
3333;">bitbake core-image-minimal</pre>
<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, Appl=
e Color Emoji, Segoe UI Emoji, NotoColorEmoji, Segoe UI Symbol, Android Emo=
ji, EmojiSymbols;">However, the resulting build was intel based, and not ar=
m as one might expect since I asked for ARM when prompted by the yocto-bsp =
script.</span><span style=3D"font-family: Calibri, Helvetica, sans-serif, E=
mojiFont, Apple Color Emoji, Segoe UI Emoji, NotoColorEmoji, Segoe UI Symbo=
l, Android Emoji, EmojiSymbols;">Is there a more hands-on document that I c=
ould be following?</span>
<pre class=3D"literallayout" style=3D"overflow: auto; color: #333333;">Pete=
r.</pre>
<pre class=3D"literallayout" style=3D"overflow: auto; color: #333333;">&nbs=
p;</pre>
<p>&nbsp;</p>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.</blockquote>
<p>&nbsp;</p>
<p>Hi Peter,</p>
<p>Have you set MACHINE =3D "myarm" in conf/local.conf in your project? Tha=
t is required in order to enable full usage of your new bsp. If not it will=
 by default be set to qemux86.</p>
<p>Also note that you can type arm instead of qemu when doing it for the re=
al target ($ ./yocto-bsp create myarm arm)</p>
<p>&nbsp;</p>
<p>BR Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_273d60d6cf9b042d7e0d8a4089ab6d83--
