Return-Path: <niam.niam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5375DE00CE8; Wed, 20 Apr 2016 05:33:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (milinevskyy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5D2BE00BF8
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 05:33:39 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id u206so78970241wme.1
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 05:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=xadtLFn1RBNRs17qa5fysiAbJ4/572YgTmYvLVoFR6U=;
	b=A2k66uRCLt01K2TY7RJfqIoCyEfoJDOWnv0mVo7QIQG/v6i0a/vFSIJiEAInIpLiLX
	pYg2xceLt7aVeqTs5hZHwQDYFVCQF8OfxvdsPyg/JFaQ0p6Bvz7i+9RN2omh1LvD4Is8
	DmQPl2DHDPgxkX3nUadoRXKpYuDAmMbDJeTkfzIFgqMTjg9mIq+/PH/J2S/l7TI6iL2Q
	F2yv5RIWjczUHD1TBzr1TdXkrJX2XXnocxWHyHVkENwBuosa0nkOjwNi+gng14X/vZjO
	jVzzKvwEkQbJXh3AIQ1psLG6L+8nCx5pXTNZjOtmMr4q+eF6QYAbvTsug0SCqCdttk9K
	fuVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=xadtLFn1RBNRs17qa5fysiAbJ4/572YgTmYvLVoFR6U=;
	b=XKwoWq58w/nzpPtA9liv8mjL8h6aA6ImMzNenT4pDNrhnnqM638fn/CpyWLW0Xwolk
	mIYHOlTI7eiX+B0Xn60bZG9oglo7zew5rUyLAII06pj9mg4k07jfve2EmsXGpkUSWFCa
	lOfIbcwPEVsRAo8f46IXW0pj58u//HpMAKoOtSTyULRqSIdDxNoQozWv/73l+f7mq4md
	z8/kfY/3CEUNSkW6eY6FP+qO+QVPnk7halGvw9V37LgJwe3GLe2AHSou3hIhK69C5AGD
	5zJbPJlVVOdS2/JPJB8w20/4UtkQqlAZ15F9JSIoBQUbnegVAOk5pQk10eG3i9d7g9fJ
	z6SA==
X-Gm-Message-State: AOPr4FW6X+woTS7G1vQPRydBOcbOcKQ3pFr5hk5oKHcS5eYuWq6UGTdBX2JFA8RJpi0qpUH7btEQRT2s62+GCw==
X-Received: by 10.195.13.135 with SMTP id ey7mr8436530wjd.161.1461155618359;
	Wed, 20 Apr 2016 05:33:38 -0700 (PDT)
MIME-Version: 1.0
Sender: niam.niam@gmail.com
Received: by 10.194.19.97 with HTTP; Wed, 20 Apr 2016 05:33:18 -0700 (PDT)
In-Reply-To: <57162B52.6060204@windriver.com>
References: <CAOUdcc_NJQpH4GMO47D_0S3db57L7VizZ5=nxU7U3O6N-MXsCg@mail.gmail.com>
	<CAOUdcc-x_vbB+g+hsgPL3b_v8RtbLOn85HrcVX8tPV=EcM5hNg@mail.gmail.com>
	<57162B52.6060204@windriver.com>
From: Dmytro Milinevskyy <milinevskyy@gmail.com>
Date: Wed, 20 Apr 2016 14:33:18 +0200
X-Google-Sender-Auth: Z9uqep_4eDJVEWlEAP6wwqbTELI
Message-ID: <CAOUdcc8ape2d=fCwr0PJa5jL-jh7HDB79nP9av0+tkG2JRGcKw@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: RPM bogus signature
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
X-List-Received-Date: Wed, 20 Apr 2016 12:33:45 -0000
Content-Type: multipart/alternative; boundary=047d7bb04dc4980d940530e9cd33

--047d7bb04dc4980d940530e9cd33
Content-Type: text/plain; charset=UTF-8

Hello Mark,
thanks a lot for this exhaustive explanation.
t's clear why you've decided to use RPM5 and really weird that RPM4 people
do not accept proposals from the project.

Seems like you are getting rid of RPM4 in upcoming release os I can't stick
to it as it will be painful to migrate.
I will probably go with your proposal to patch RPM5 for now and in future
will consider to implement verification of the signature in 'smart'.

Best regards,
Dimitri

On Tue, Apr 19, 2016 at 2:57 PM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 4/18/16 6:54 AM, Dmytro Milinevskyy wrote:
> > Hi,
> >
> > I've found the culprit.
> > RPM5 does package auto-signing. Itself it's not a big deal but the
> problem is
> > that it also considers that package is valid if the pubkey is present in
> the RPM
> > header.
> > This is an extremely severe security issue - any "signed" package can be
> > installed on the target even if the public key is not installed in the
> local RPM DB.
>
> RPM5 has an internal non-reputable signature added to all packages.  This
> is a
> signature, but it shows nothing about authenticity or permission to
> install.
> The signature is there as a way to validate that the contents of the
> package
> have not been modified.  (Since the signature can be replaced, this is
> really
> equivalent to the md5sum / sha256 check that is used in rpm, but
> significantly
> stronger and harder to accidently defeat.)
>
> This is NOT a security risk.  RPM knows this is a non-reputable
> signature.  It
> was added to ensure that before RPM fields are processed that basic sanity
> checking has been performed.  (The md5sum, while insecure, also requires
> headers
> to be processed to pull out the values.. causing more chance of 'fuzz' to
> cause
> a problem in an unsigned package.)
>
> Really the packages should be verified as reputable by the package
> management
> front end (smart) prior to RPM.  With smart you can sign the package feed,
> if
> everything in the package feed is reputable smart will then verify the
> package
> matches the feed description and is unmodified BEFORE it calls RPM.
>
>
> If you absolutely must check if the signature is reputable or not, then
> you will
> have make a few modiciations to RPM5's source.  The changes themselves are
> very
> simple.  (I've had to do this for a project in the past, below is based on
> what
> I needed to do to meet my customer's requirements.)
>
> In rpmdb/pkgio.c:
>
> Search for "Has this pubkey failed a previous lookup?" (around line 210).
>
> Instead of "goto leave:" you need to check if the signature is in the
> database
> or if it's only available in the package itself.
>
> -     && rpmbfChk(awol, sigp->signid, sizeof(sigp->signid)))
> +     && rpmbfChk(awol, sigp->signid, sizeof(sigp->signid))) {
> +       /* If it's a 'bad' sig, check if it's an autosign package pubkey
> (if pre
> sent). */
> +       if (dig->pub && dig->publen > 0) {
> +           uint8_t keyid[8];
> +
> +           xx = pgpPubkeyFingerprint((const rpmuint8_t *)dig->pub,
> dig->publen,
>  keyid);
> +           if (!memcmp(sigp->signid, keyid, sizeof(keyid))) {
> +               res = RPMRC_NOTTRUSTED;
> +           }
> +       }
>         goto leave;
> +    }
>
> Then down around line 369, you'll see:
>
>         case RPMRC_NOKEY:
>             if (validate < 0)   /* XXX ignore NOKEY w rpmdb pubkey. */
>                 break;
>
> Change it to:
>
>         case RPMRC_NOKEY:
>             if (validate < 0)   /* XXX ignore NOKEY w rpmdb pubkey. */
> +               rc = RPMRC_NOTTRUSTED;
> -               break;
>
>
> (there are other ways to do this as well, but this is the way I've done it
> in
> the past.  I'd rather the package pass validation and be set as
> "NOTTRUSTED" in
> this case.)
>
>
> Finally in lib/rpmgi.c:
>
> around line 176, you'll see:
>
>         case RPMRC_FAIL:
>         default:
>             (void)headerFree(h);
>             h = NULL;
>             gi->rc = rpmrc;
>             break;
>         case RPMRC_NOSIG:               /* XXX FIXME */
>         case RPMRC_NOTTRUSTED:
>         case RPMRC_NOKEY:
>         case RPMRC_OK:
>             break;
>
> If you want NOSIG, NOTTRUSTED and NOKEY to be failures, you need to do it
> here.
>  Just move the cases you want to fail above the default, such as:
>
>         case RPMRC_FAIL:
>         case RPMRC_NOSIG:               /* XXX FIXME */
>         case RPMRC_NOTTRUSTED:
>         case RPMRC_NOKEY:
>         default:
>             (void)headerFree(h);
>             h = NULL;
>             gi->rc = rpmrc;
>             break;
>         case RPMRC_OK:
>             break;
>
> (And no, I don't believe the code above is generally applicable.  In fact
> it
> will probably interfere with many projects ability to get things to work
> properly -- so I have no plans to submit patches to OE.  As I said before
> the
> right way to deal with this, in most cases, is to prevent the package from
> being
> downloaded in the front end.)
>
> > I would consider to either switch to RPM4 or just disable this "feature"
> in RPM5.
> > BTW, what's purpose of using RPM5 in Yocto? The gross distros(SuSe,
> Fedora, etc)
> > still successfully use RPM4. This means that it is exhaustively verified.
>
> RPM 4 has had significant security problems in the past.  (I don't know the
> current state of it.)
>
> RPM 4 does not permit arbitrary architecture fields, this is a feature that
> OpenEmbedded requires.  We can't preprogram all possible values into RPM.
>
> RPM 4 does not support cross compilation of the tooling, as well as using
> it in
> a cross-install system.
>
> RPM 4 does not care about anyone other then workstation/server users.
> We've
> tried in the past, and been ignored.
>
> You are free to use it if it works for your project, but expect major
> problems
> unless you happen to be on an IA32 target, and change all of the package
> arches
> in the system to look like a Red Hat or SuSE system...
>
> > Best regards,
> > Dimitri
> >
> > On Sat, Apr 16, 2016 at 2:57 PM, Dmytro Milinevskyy <
> milinevskyy@gmail.com
> > <mailto:milinevskyy@gmail.com>> wrote:
> >
> >     Hello,
> >
> >     currently I'm trying to enforce rpm signature verification on the
> target
> >     device and get weird bogus signature of the RPM packages when the
> signature
> >     is not enabled in the configuration.
> >     The main issue that this signature is considered as valid by the RPM
> 5.4.14
> >     which is used by Yocto. And thus it is "correctly" installed by
> "smart"
> >     packaging system on the target.
> >
> >     For example here 2 packages built w/o signing. Both packages have
> different
> >     keys and RPM is not complaining:
> >     >tmp/sysroots/x86_64-linux/usr/bin/rpm -Kv
> >     ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
> >     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
> >     ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
> >         Header V4 DSA signature: OK, key ID bd8f688a
> >         Header SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)
> >         MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)
> >     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
> >         Header V4 DSA signature: OK, key ID bc6abdd3
> >         Header SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)
> >         MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)
> >
> >     Nevertheless the host RPM(rpm4 from ubuntu) is correctly identifying
> that
> >     the signature is invalid:
> >     >rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
> >     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
> >     ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
> >         Header V4 DSA/SHA1 Signature, key ID bd8f688a: NOKEY
> >         Header SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)
> >         MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)
> >     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
> >         Header V4 DSA/SHA1 Signature, key ID bc6abdd3: NOKEY
> >         Header SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)
> >         MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)
> >
> >     Following is an output of properly signed packages. You may see that
> the
> >     keys are valid(you can also check the pub key on MIT key storage):
> >     rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
> >     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
> >     ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
> >         Header V4 RSA/SHA1 Signature, key ID 5a906f4c: OK
> >         Header SHA1 digest: OK (e82b83bc3a4713d36548a3ea6b7c0d3c3dc35f1f)
> >         MD5 digest: OK (e9bfa1fc6a4ae90e84851bfd4583ec29)
> >     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
> >         Header V4 RSA/SHA1 Signature, key ID 5a906f4c: OK
> >         Header SHA1 digest: OK (d6925400698be829e08bc5013fd28d2c829a2600)
> >         MD5 digest: OK (427f42d79b83e314f741ff73a672c5dc)
> >
> >
> >     Host RPM version
> >     >rpm --version
> >     RPM version 4.11.2
> >
> >     Yocto RPM version
> >     >tmp/sysroots/x86_64-linux/usr/bin/rpm --version
> >     rpm (RPM) 5.4.14
> >
> >     Yocto version: jethro (1a52eceaa5df89914b6a711defdcf0046e74c7f6)
> >
> >     Best regards,
> >     Dimitri
> >
> >
> >
> >
>
>

--047d7bb04dc4980d940530e9cd33
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Mark,<div>thanks a lot for this exhaustive explanati=
on.</div><div>t&#39;s clear why you&#39;ve decided to use RPM5 and really w=
eird that RPM4 people do not accept proposals from the project.<br></div><d=
iv><br></div><div>Seems like you are getting rid of RPM4 in upcoming releas=
e os I can&#39;t stick to it as it will be painful to migrate.<br></div><di=
v>I will probably go with your proposal to patch RPM5 for now and in future=
 will consider to implement verification of the signature in &#39;smart&#39=
;.</div><div><br></div><div>Best regards,</div><div>Dimitri</div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Apr 19, 2016 =
at 2:57 PM, Mark Hatle <span dir=3D"ltr">&lt;<a href=3D"mailto:mark.hatle@w=
indriver.com" target=3D"_blank">mark.hatle@windriver.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 4/18/16 6:54 AM, =
Dmytro Milinevskyy wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;ve found the culprit.<br>
&gt; RPM5 does package auto-signing. Itself it&#39;s not a big deal but the=
 problem is<br>
&gt; that it also considers that package is valid if the pubkey is present =
in the RPM<br>
&gt; header.<br>
&gt; This is an extremely severe security issue - any &quot;signed&quot; pa=
ckage can be<br>
&gt; installed on the target even if the public key is not installed in the=
 local RPM DB.<br>
<br>
</span>RPM5 has an internal non-reputable signature added to all packages.=
=C2=A0 This is a<br>
signature, but it shows nothing about authenticity or permission to install=
.<br>
The signature is there as a way to validate that the contents of the packag=
e<br>
have not been modified.=C2=A0 (Since the signature can be replaced, this is=
 really<br>
equivalent to the md5sum / sha256 check that is used in rpm, but significan=
tly<br>
stronger and harder to accidently defeat.)<br>
<br>
This is NOT a security risk.=C2=A0 RPM knows this is a non-reputable signat=
ure.=C2=A0 It<br>
was added to ensure that before RPM fields are processed that basic sanity<=
br>
checking has been performed.=C2=A0 (The md5sum, while insecure, also requir=
es headers<br>
to be processed to pull out the values.. causing more chance of &#39;fuzz&#=
39; to cause<br>
a problem in an unsigned package.)<br>
<br>
Really the packages should be verified as reputable by the package manageme=
nt<br>
front end (smart) prior to RPM.=C2=A0 With smart you can sign the package f=
eed, if<br>
everything in the package feed is reputable smart will then verify the pack=
age<br>
matches the feed description and is unmodified BEFORE it calls RPM.<br>
<br>
<br>
If you absolutely must check if the signature is reputable or not, then you=
 will<br>
have make a few modiciations to RPM5&#39;s source.=C2=A0 The changes themse=
lves are very<br>
simple.=C2=A0 (I&#39;ve had to do this for a project in the past, below is =
based on what<br>
I needed to do to meet my customer&#39;s requirements.)<br>
<br>
In rpmdb/pkgio.c:<br>
<br>
Search for &quot;Has this pubkey failed a previous lookup?&quot; (around li=
ne 210).<br>
<br>
Instead of &quot;goto leave:&quot; you need to check if the signature is in=
 the database<br>
or if it&#39;s only available in the package itself.<br>
<br>
-=C2=A0 =C2=A0 =C2=A0&amp;&amp; rpmbfChk(awol, sigp-&gt;signid, sizeof(sigp=
-&gt;signid)))<br>
+=C2=A0 =C2=A0 =C2=A0&amp;&amp; rpmbfChk(awol, sigp-&gt;signid, sizeof(sigp=
-&gt;signid))) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* If it&#39;s a &#39;bad&#39; sig, check if it=
&#39;s an autosign package pubkey (if pre<br>
sent). */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (dig-&gt;pub &amp;&amp; dig-&gt;publen &gt; =
0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uint8_t keyid[8];<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0xx =3D pgpPubkeyFingerprint((cons=
t rpmuint8_t *)dig-&gt;pub, dig-&gt;publen,<br>
=C2=A0keyid);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!memcmp(sigp-&gt;signid, keyi=
d, sizeof(keyid))) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D RPMRC_NOTTR=
USTED;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 goto leave;<br>
+=C2=A0 =C2=A0 }<br>
<br>
Then down around line 369, you&#39;ll see:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_NOKEY:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (validate &lt; 0)=C2=A0 =C2=A0=
/* XXX ignore NOKEY w rpmdb pubkey. */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
Change it to:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_NOKEY:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (validate &lt; 0)=C2=A0 =C2=A0=
/* XXX ignore NOKEY w rpmdb pubkey. */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D RPMRC_NOTTRU=
STED;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
<br>
<br>
(there are other ways to do this as well, but this is the way I&#39;ve done=
 it in<br>
the past.=C2=A0 I&#39;d rather the package pass validation and be set as &q=
uot;NOTTRUSTED&quot; in<br>
this case.)<br>
<br>
<br>
Finally in lib/rpmgi.c:<br>
<br>
around line 176, you&#39;ll see:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_FAIL:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (void)headerFree(h);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 h =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gi-&gt;rc =3D rpmrc;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_NOSIG:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0/* XXX FIXME */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_NOTTRUSTED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_NOKEY:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_OK:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
If you want NOSIG, NOTTRUSTED and NOKEY to be failures, you need to do it h=
ere.<br>
=C2=A0Just move the cases you want to fail above the default, such as:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_FAIL:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_NOSIG:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0/* XXX FIXME */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_NOTTRUSTED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_NOKEY:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (void)headerFree(h);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 h =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gi-&gt;rc =3D rpmrc;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case RPMRC_OK:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
(And no, I don&#39;t believe the code above is generally applicable.=C2=A0 =
In fact it<br>
will probably interfere with many projects ability to get things to work<br=
>
properly -- so I have no plans to submit patches to OE.=C2=A0 As I said bef=
ore the<br>
right way to deal with this, in most cases, is to prevent the package from =
being<br>
downloaded in the front end.)<br>
<span class=3D""><br>
&gt; I would consider to either switch to RPM4 or just disable this &quot;f=
eature&quot; in RPM5.<br>
&gt; BTW, what&#39;s purpose of using RPM5 in Yocto? The gross distros(SuSe=
, Fedora, etc)<br>
&gt; still successfully use RPM4. This means that it is exhaustively verifi=
ed.<br>
<br>
</span>RPM 4 has had significant security problems in the past.=C2=A0 (I do=
n&#39;t know the<br>
current state of it.)<br>
<br>
RPM 4 does not permit arbitrary architecture fields, this is a feature that=
<br>
OpenEmbedded requires.=C2=A0 We can&#39;t preprogram all possible values in=
to RPM.<br>
<br>
RPM 4 does not support cross compilation of the tooling, as well as using i=
t in<br>
a cross-install system.<br>
<br>
RPM 4 does not care about anyone other then workstation/server users.=C2=A0=
 We&#39;ve<br>
tried in the past, and been ignored.<br>
<br>
You are free to use it if it works for your project, but expect major probl=
ems<br>
unless you happen to be on an IA32 target, and change all of the package ar=
ches<br>
in the system to look like a Red Hat or SuSE system...<br>
<span class=3D"im HOEnZb"><br>
&gt; Best regards,<br>
&gt; Dimitri<br>
&gt;<br>
&gt; On Sat, Apr 16, 2016 at 2:57 PM, Dmytro Milinevskyy &lt;<a href=3D"mai=
lto:milinevskyy@gmail.com">milinevskyy@gmail.com</a><br>
</span><div class=3D"HOEnZb"><div class=3D"h5">&gt; &lt;mailto:<a href=3D"m=
ailto:milinevskyy@gmail.com">milinevskyy@gmail.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Hello,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0currently I&#39;m trying to enforce rpm signature v=
erification on the target<br>
&gt;=C2=A0 =C2=A0 =C2=A0device and get weird bogus signature of the RPM pac=
kages when the signature<br>
&gt;=C2=A0 =C2=A0 =C2=A0is not enabled in the configuration.<br>
&gt;=C2=A0 =C2=A0 =C2=A0The main issue that this signature is considered as=
 valid by the RPM 5.4.14<br>
&gt;=C2=A0 =C2=A0 =C2=A0which is used by Yocto. And thus it is &quot;correc=
tly&quot; installed by &quot;smart&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0packaging system on the target.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0For example here 2 packages built w/o signing. Both=
 packages have different<br>
&gt;=C2=A0 =C2=A0 =C2=A0keys and RPM is not complaining:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;tmp/sysroots/x86_64-linux/usr/bin/rpm -Kv<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header V4 DSA signature: OK, key ID b=
d8f688a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header SHA1 digest: OK (45dfa7cbfe3cf=
c3a6c4a928e58b100d81f5a367d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MD5 digest: OK (a8450299f5c2d9adecc4b=
da799b7038d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header V4 DSA signature: OK, key ID b=
c6abdd3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header SHA1 digest: OK (e95dc6b409652=
24ae443460117fe2ada4f855b2d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MD5 digest: OK (1dda4ae1673ab96dd9edb=
dc423df29ac)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Nevertheless the host RPM(rpm4 from ubuntu) is corr=
ectly identifying that<br>
&gt;=C2=A0 =C2=A0 =C2=A0the signature is invalid:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.=
all.rpm<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header V4 DSA/SHA1 Signature, key ID =
bd8f688a: NOKEY<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header SHA1 digest: OK (45dfa7cbfe3cf=
c3a6c4a928e58b100d81f5a367d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MD5 digest: OK (a8450299f5c2d9adecc4b=
da799b7038d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header V4 DSA/SHA1 Signature, key ID =
bc6abdd3: NOKEY<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header SHA1 digest: OK (e95dc6b409652=
24ae443460117fe2ada4f855b2d)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MD5 digest: OK (1dda4ae1673ab96dd9edb=
dc423df29ac)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Following is an output of properly signed packages.=
 You may see that the<br>
&gt;=C2=A0 =C2=A0 =C2=A0keys are valid(you can also check the pub key on MI=
T key storage):<br>
&gt;=C2=A0 =C2=A0 =C2=A0rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.=
rpm<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header V4 RSA/SHA1 Signature, key ID =
5a906f4c: OK<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header SHA1 digest: OK (e82b83bc3a471=
3d36548a3ea6b7c0d3c3dc35f1f)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MD5 digest: OK (e9bfa1fc6a4ae90e84851=
bfd4583ec29)<br>
&gt;=C2=A0 =C2=A0 =C2=A0./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header V4 RSA/SHA1 Signature, key ID =
5a906f4c: OK<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Header SHA1 digest: OK (d6925400698be=
829e08bc5013fd28d2c829a2600)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MD5 digest: OK (427f42d79b83e314f741f=
f73a672c5dc)<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Host RPM version<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;rpm --version<br>
&gt;=C2=A0 =C2=A0 =C2=A0RPM version 4.11.2<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Yocto RPM version<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;tmp/sysroots/x86_64-linux/usr/bin/rpm --version=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0rpm (RPM) 5.4.14<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Yocto version: jethro (1a52eceaa5df89914b6a711defdc=
f0046e74c7f6)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Dimitri<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div>

--047d7bb04dc4980d940530e9cd33--
