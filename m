Return-Path: <dwesterg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07AE6E00874; Wed,  3 Dec 2014 05:31:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dwesterg[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75246E0080C
	for <yocto@yoctoproject.org>; Wed,  3 Dec 2014 05:31:41 -0800 (PST)
Received: by mail-wi0-f182.google.com with SMTP id h11so24346103wiw.9
	for <yocto@yoctoproject.org>; Wed, 03 Dec 2014 05:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=iOuSWS9fpz1cOTsaG/bZOobZYy4emgDVhc5si96EZto=;
	b=ezP3w0A/UPNmVRxZkQmejIq00s7YIQTy0w74bXONMuJweIpZi3iKfrcAywR9hEzoc0
	3by3xIsLmz6FVz6//iiAT4l31CQMPqnte7RdVEeGdPmq2pFiCVtqW5VZ5rNAHPRBpYcn
	FefquOGUx3k+tTJbRVXlK9bMIPek8uqzLDsYBmGCm8njl9FqGQe9r1sOPtdSoq5al7RC
	xTZHPK5ZD/biWSloqTrJ5n9H6IWhclUJr0E/GJ5vKVWtEbFrUO/LQ0IWxEpC5jxYB9AC
	HPNBS/ODtIUzsJINfSJK/Riaz2hWInNYbSScQ+O+Xd8/iO2ogTjQTXVCOgJZaTPdRvLR
	g68Q==
MIME-Version: 1.0
X-Received: by 10.180.84.198 with SMTP id b6mr102319788wiz.41.1417613500498;
	Wed, 03 Dec 2014 05:31:40 -0800 (PST)
Received: by 10.194.162.2 with HTTP; Wed, 3 Dec 2014 05:31:40 -0800 (PST)
Received: by 10.194.162.2 with HTTP; Wed, 3 Dec 2014 05:31:40 -0800 (PST)
In-Reply-To: <2238EDC6081C944E97E4EE915AE5CBEC52011AD4@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC5200F783@EXCHANGE-B.raylase.de>
	<2238EDC6081C944E97E4EE915AE5CBEC52011AD4@EXCHANGE-B.raylase.de>
Date: Wed, 3 Dec 2014 05:31:40 -0800
Message-ID: <CAJzMVUm5+ei84XCZYm_bA7Ftiw+_gyNgu3ohnD1vR+_K-B_AVg@mail.gmail.com>
From: Dalon Westergreen <dwesterg@gmail.com>
To: Jim Spriggs <J.Spriggs@raylase.de>
X-Mailman-Approved-At: Wed, 03 Dec 2014 11:12:18 -0800
Cc: =?UTF-8?Q?H=C3=B6cht=2C_Matthias?= <M.Hoecht@raylase.de>, "Wilfert,
	Dennis" <D.Wilfert.extern@raylase.de>, "Dambacher,
	Berthold" <B.Dambacher@raylase.de>,
	"rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Weber,
	Markus" <M.Weber@raylase.de>
Subject: Re: [Rfi] "bitbake altera-gsrd-image -c populate_sdk" fails with "Multiple .bb files ... nativesdk-libiconv ... external-linaro-toolchain.bb ... eglibc_2.16.bb"
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
X-List-Received-Date: Wed, 03 Dec 2014 13:31:50 -0000
Content-Type: multipart/alternative; boundary=f46d0418264a204b2a05094fdd69

--f46d0418264a204b2a05094fdd69
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If you look here
http://rocketboards.org/foswiki/Documentation/YoctoDoraBuildWithMetaAltera

This is a better guide to using newer yocto versions.  I would suggest
dumping the poky-socfpga stuff.

Dalon
On Dec 3, 2014 3:36 AM, "Spriggs, Jim" <J.Spriggs@raylase.de> wrote:

> Re-Hi,
>
> Some more investigations...
>
> To shorten the build run times, I used the altera-image-minimal and
> core-image-minimal recipes instead of the (much larger) altera-gsrd-image=
.
>
> As they stand, both recipes can be built without problems.
>
> WIth "bitbake <recipe> -c populate_sdk" both fail as above with "Multiple
> .bb files..."
>
> Since one of the duplicate providers is apparently the
> external-linaro-toolchain, I decided to eliminate it from site.conf, and
> let bitbake build the "internal" toolchain.
>
> This time the "-c populate_sdk" worked like a charm.
>
> So it looks to me as if there's an incompatibility between the *external*
> linaro toolchain and the "populte_sdk" task in the altera version of poky=
.
>
> I'm more than happy to try and fix the problem, but I don't (yet) have a
> clue where to look next.
>
> Has anyone got a pointer for me, please?
> --
> jim
>
> ________________________________________
> From: rfi-bounces@lists.rocketboards.org [
> rfi-bounces@lists.rocketboards.org] on behalf of Spriggs, Jim [
> J.Spriggs@raylase.de]
> Sent: 02 December 2014 10:12
> To: rfi@lists.rocketboards.org
> Subject: [Rfi] "bitbake altera-gsrd-image -c populate_sdk" fails with
> "Multiple .bb files ... nativesdk-libiconv ...
> external-linaro-toolchain.bb ... eglibc_2.16.bb"
>
> Hi Guys,
>
> Having followed the instructions at
> http://www.rocketboards.org/foswiki/Documentation/GSRD140CompilingLinuxCo=
pyArrowSoCKitEdition
> to set up for building the GSRD image,
> I tried "bitbake altera-gsrd-image" and it worked just fine, producing th=
e
> image as expected.
>
> Then I tried "bitbake altera-gsrd-image -c populate_sdk", and got the
> error message in the Subject.
>
> As an utter newbie, I'm hoping someone can point out (in simple terms!)
> what I'm doing wrong.
>
> Is populate_sdk not supported by SoCKit GSRD 14.0 ?
> Is my invocation wrong?
>
> Thanks for any clues!
>
> --
> Jim
> PS: sorry about the company sig - I can't switch it off.
>
>
>
> ________________________________
>
> RAYLASE AG
> Argelsrieder Feld 2+4
> 82234 Wessling
> Germany
> Tel.: +49-(0)8153/88 98-0
> Fax: +49-(0)8153/88 98-10
> http://www.raylase.de
>
> District Court Munich, HRB 131450
>
> Board: Peter von Jan (CEO)
>
> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mai=
l
> irrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Absender=
 und
> vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte
> Weitergabe dieser Mail ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are not the intended recipient (or have received this e-mail in error)
> please notify the sender immediately and destroy this e-mail. Any
> unauthorized copying, disclosure or distribution of the material in this
> e-mail is strictly forbidden.
> _______________________________________________
> Rfi mailing list
> Rfi@lists.rocketboards.org
> http://lists.rocketboards.org/cgi-bin/mailman/listinfo/rfi
>
> ________________________________
>
> RAYLASE AG
> Argelsrieder Feld 2+4
> 82234 Wessling
> Germany
> Tel.: +49-(0)8153/88 98-0
> Fax: +49-(0)8153/88 98-10
> http://www.raylase.de
>
> District Court Munich, HRB 131450
>
> Board: Peter von Jan (CEO)
>
> Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mai=
l
> irrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Absender=
 und
> vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte
> Weitergabe dieser Mail ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are not the intended recipient (or have received this e-mail in error)
> please notify the sender immediately and destroy this e-mail. Any
> unauthorized copying, disclosure or distribution of the material in this
> e-mail is strictly forbidden.
> _______________________________________________
> Rfi mailing list
> Rfi@lists.rocketboards.org
> http://lists.rocketboards.org/cgi-bin/mailman/listinfo/rfi
>

--f46d0418264a204b2a05094fdd69
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">If you look here <a href=3D"http://rocketboards.org/foswiki/=
Documentation/YoctoDoraBuildWithMetaAltera">http://rocketboards.org/foswiki=
/Documentation/YoctoDoraBuildWithMetaAltera</a></p>
<p dir=3D"ltr">This is a better guide to using newer yocto versions.=C2=A0 =
I would suggest dumping the poky-socfpga stuff.</p>
<p dir=3D"ltr">Dalon</p>
<div class=3D"gmail_quote">On Dec 3, 2014 3:36 AM, &quot;Spriggs, Jim&quot;=
 &lt;<a href=3D"mailto:J.Spriggs@raylase.de">J.Spriggs@raylase.de</a>&gt; w=
rote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Re-Hi,<br>
<br>
Some more investigations...<br>
<br>
To shorten the build run times, I used the altera-image-minimal and core-im=
age-minimal recipes instead of the (much larger) altera-gsrd-image.<br>
<br>
As they stand, both recipes can be built without problems.<br>
<br>
WIth &quot;bitbake &lt;recipe&gt; -c populate_sdk&quot; both fail as above =
with &quot;Multiple .bb files...&quot;<br>
<br>
Since one of the duplicate providers is apparently the external-linaro-tool=
chain, I decided to eliminate it from site.conf, and let bitbake build the =
&quot;internal&quot; toolchain.<br>
<br>
This time the &quot;-c populate_sdk&quot; worked like a charm.<br>
<br>
So it looks to me as if there&#39;s an incompatibility between the *externa=
l* linaro toolchain and the &quot;populte_sdk&quot; task in the altera vers=
ion of poky.<br>
<br>
I&#39;m more than happy to try and fix the problem, but I don&#39;t (yet) h=
ave a clue where to look next.<br>
<br>
Has anyone got a pointer for me, please?<br>
--<br>
jim<br>
<br>
________________________________________<br>
From: <a href=3D"mailto:rfi-bounces@lists.rocketboards.org">rfi-bounces@lis=
ts.rocketboards.org</a> [<a href=3D"mailto:rfi-bounces@lists.rocketboards.o=
rg">rfi-bounces@lists.rocketboards.org</a>] on behalf of Spriggs, Jim [<a h=
ref=3D"mailto:J.Spriggs@raylase.de">J.Spriggs@raylase.de</a>]<br>
Sent: 02 December 2014 10:12<br>
To: <a href=3D"mailto:rfi@lists.rocketboards.org">rfi@lists.rocketboards.or=
g</a><br>
Subject: [Rfi] &quot;bitbake altera-gsrd-image -c populate_sdk&quot; fails =
with &quot;Multiple .bb files ... nativesdk-libiconv ... <a href=3D"http://=
external-linaro-toolchain.bb" target=3D"_blank">external-linaro-toolchain.b=
b</a> ... <a href=3D"http://eglibc_2.16.bb" target=3D"_blank">eglibc_2.16.b=
b</a>&quot;<br>
<br>
Hi Guys,<br>
<br>
Having followed the instructions at <a href=3D"http://www.rocketboards.org/=
foswiki/Documentation/GSRD140CompilingLinuxCopyArrowSoCKitEdition" target=
=3D"_blank">http://www.rocketboards.org/foswiki/Documentation/GSRD140Compil=
ingLinuxCopyArrowSoCKitEdition</a>=C2=A0 to set up for building the GSRD im=
age,<br>
I tried &quot;bitbake altera-gsrd-image&quot; and it worked just fine, prod=
ucing the image as expected.<br>
<br>
Then I tried &quot;bitbake altera-gsrd-image -c populate_sdk&quot;, and got=
 the error message in the Subject.<br>
<br>
As an utter newbie, I&#39;m hoping someone can point out (in simple terms!)=
 what I&#39;m doing wrong.<br>
<br>
Is populate_sdk not supported by SoCKit GSRD 14.0 ?<br>
Is my invocation wrong?<br>
<br>
Thanks for any clues!<br>
<br>
--<br>
Jim<br>
PS: sorry about the company sig - I can&#39;t switch it off.<br>
<br>
<br>
<br>
________________________________<br>
<br>
RAYLASE AG<br>
Argelsrieder Feld 2+4<br>
82234 Wessling<br>
Germany<br>
Tel.: <a href=3D"tel:%2B49-%280%298153%2F88%2098-0" value=3D"+49815388980">=
+49-(0)8153/88 98-0</a><br>
Fax: <a href=3D"tel:%2B49-%280%298153%2F88%2098-10" value=3D"+498153889810"=
>+49-(0)8153/88 98-10</a><br>
<a href=3D"http://www.raylase.de" target=3D"_blank">http://www.raylase.de</=
a><br>
<br>
District Court Munich, HRB 131450<br>
<br>
Board: Peter von Jan (CEO)<br>
<br>
Supervisory Board: Dr. Ulrich Lohmann (Chairman)<br>
<br>
<br>
Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte I=
nformationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail i=
rrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Absender un=
d vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte We=
itergabe dieser Mail ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.<br>
_______________________________________________<br>
Rfi mailing list<br>
<a href=3D"mailto:Rfi@lists.rocketboards.org">Rfi@lists.rocketboards.org</a=
><br>
<a href=3D"http://lists.rocketboards.org/cgi-bin/mailman/listinfo/rfi" targ=
et=3D"_blank">http://lists.rocketboards.org/cgi-bin/mailman/listinfo/rfi</a=
><br>
<br>
________________________________<br>
<br>
RAYLASE AG<br>
Argelsrieder Feld 2+4<br>
82234 Wessling<br>
Germany<br>
Tel.: <a href=3D"tel:%2B49-%280%298153%2F88%2098-0" value=3D"+49815388980">=
+49-(0)8153/88 98-0</a><br>
Fax: <a href=3D"tel:%2B49-%280%298153%2F88%2098-10" value=3D"+498153889810"=
>+49-(0)8153/88 98-10</a><br>
<a href=3D"http://www.raylase.de" target=3D"_blank">http://www.raylase.de</=
a><br>
<br>
District Court Munich, HRB 131450<br>
<br>
Board: Peter von Jan (CEO)<br>
<br>
Supervisory Board: Dr. Ulrich Lohmann (Chairman)<br>
<br>
<br>
Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte I=
nformationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail i=
rrt=C3=BCmlich erhalten haben, informieren Sie bitte sofort den Absender un=
d vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte We=
itergabe dieser Mail ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.<br>
_______________________________________________<br>
Rfi mailing list<br>
<a href=3D"mailto:Rfi@lists.rocketboards.org">Rfi@lists.rocketboards.org</a=
><br>
<a href=3D"http://lists.rocketboards.org/cgi-bin/mailman/listinfo/rfi" targ=
et=3D"_blank">http://lists.rocketboards.org/cgi-bin/mailman/listinfo/rfi</a=
><br>
</blockquote></div>

--f46d0418264a204b2a05094fdd69--
