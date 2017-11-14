Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 290A4E00CD4; Mon, 13 Nov 2017 18:12:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3303DE00C45
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 18:12:17 -0800 (PST)
Received: by mail-vk0-f67.google.com with SMTP id k123so11305692vkb.3
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 18:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=98X/lN8QxtPAhEmn1t6jlmG2fK+ergBSk2XapNVj72w=;
	b=o59NJRy+3zHGz45C84Qk/9isbs6SBR4X04bimZq//P4HsZinbZMEoofgcO2OvxkHFu
	1DMMMDZqR9tY5d8g3ljteoWQWg6JW1vy4SFu5hDLHFGpp4VCQlZSGODMQngaaphWRLqB
	VnY1Je/YCpeu5SD0iBoLTAhc35/id4LXNo1Ga3nLsVNYzhWTLC0SuabaJnHJ7H0Z+UW0
	/HXqfUZb+fjREDor1eDDxbWqUfPhAZUMcZo/lHEnEmkczj14Nfzq5V5er5tW9/YLhSCe
	+bIZ/Lk0jzRAidWhSq5d7tRS1Kxg/2qyMbBqNrjSVbGUXE2KoqjuSTDfi2NBRSIjXyZT
	B/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=98X/lN8QxtPAhEmn1t6jlmG2fK+ergBSk2XapNVj72w=;
	b=ZMaL4URhF++d4serZYH7EMHxxI5Tiy+yBw4NoqfljRkGFUkLqfmzsP7zhsuTxQfSeE
	LVaYQaP3tYm3OUzHlD4pgzpQHgZqqdU5wAAIxax/wV02LfKAG2OyvWc2RlRWO/U6zIOp
	v18/Rw86FUtBH05CTgDNpMo9iWmw5avy0nQZTaORRmacSF907TVg0mqvgmZduEov4FD9
	HEPdWOVqL1bN2WglrXGu8A0dmppM3QNPIExnsSAvqTOdRa4NX3SI3rgFV2WMbX5g7982
	tXWtbkxXb/QSMGOkADDBN3lByjQrpthL0KtpBPxo2X/f+CWmA8IfQJ/QxuNmbzAu7aDW
	sAAQ==
X-Gm-Message-State: AJaThX5FzSVjc/le7hvTl7DvYLZ/x5vdz02s6Vr+ywPNWdeBWwXhvvTC
	wlPGdlswUz0P/5OO+kPhjEWY4uVqaJKtqbvbjMkhEg==
X-Google-Smtp-Source: AGs4zMaaulCNqfuEo3oJEVcif5/OXg3YzPRUraKYza/ahShgVIOJ/RsUEgfRhN4aVswe9hfeWq2h/cDuytoPMHIehpk=
X-Received: by 10.31.128.5 with SMTP id b5mr8583612vkd.170.1510625537218; Mon,
	13 Nov 2017 18:12:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.19.130 with HTTP; Mon, 13 Nov 2017 18:11:56 -0800 (PST)
In-Reply-To: <CABcZANm=eqp+x9YPPrSUESXUCkowC0XfAXFvuJPGkWfFJ1s+Mw@mail.gmail.com>
References: <1510597074-24537-1-git-send-email-martyn@welchs.me.uk>
	<CABcZANm=eqp+x9YPPrSUESXUCkowC0XfAXFvuJPGkWfFJ1s+Mw@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Mon, 13 Nov 2017 19:11:56 -0700
Message-ID: <CABcZANmweukni+UHbi8gANk+orN4SyUtaKxAa2fAkyDcMU9SOA@mail.gmail.com>
To: Martyn Welch <martyn@welchs.me.uk>
Cc: yocto <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 1/2] package.bbclass: add prohibited-path qa test
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
X-List-Received-Date: Tue, 14 Nov 2017 02:12:19 -0000
Content-Type: multipart/alternative; boundary="001a114295ea88dedc055de7ea69"

--001a114295ea88dedc055de7ea69
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2017 at 7:10 PM, Christopher Larson <kergoth@gmail.com>
wrote:

>
>
> On Mon, Nov 13, 2017 at 11:17 AM, Martyn Welch <martyn@welchs.me.uk>
> wrote:
>
>> From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
>>
>> Sometimes we wish to ensure that packages don't install files or
>> directories somewhere that may prove detrimental to the operation of the
>> system. For example, this may be the case if files are placed in a
>> directory that is utilised as a mount point at run time, thus making the=
m
>> inaccessible once when the mount point is being utilised.
>>
>> Implement the prohibited-path QA test, which enables such locations to b=
e
>> specified in a "PROHIBITED_PATH" variable. This implementation allows fo=
r
>> exact matches and simple wildcards (paths ending with an asterisk. An
>> error will be raised should a match be found, or in the case of a
>> wildcard, for any files added below the specificed location(s).
>>
>> Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
>> Signed-off-by: Martyn Welch <martyn@welchs.me.uk>
>> ---
>>  meta/classes/insane.bbclass  |  2 +-
>>  meta/classes/package.bbclass | 11 +++++++++++
>>  2 files changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
>> index def9c70..fb10681 100644
>> --- a/meta/classes/insane.bbclass
>> +++ b/meta/classes/insane.bbclass
>> @@ -33,7 +33,7 @@ ERROR_QA ?=3D "dev-so debug-deps dev-deps debug-files
>> arch pkgconfig la \
>>              perms dep-cmp pkgvarcheck perm-config perm-line perm-link \
>>              split-strip packages-list pkgv-undefined var-undefined \
>>              version-going-backwards expanded-d invalid-chars \
>> -            license-checksum dev-elf file-rdeps \
>> +            license-checksum dev-elf file-rdeps prohibited-path \
>>              "
>>  # Add usrmerge QA check based on distro feature
>>  ERROR_QA_append =3D "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge'=
,
>> ' usrmerge', '', d)}"
>> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
>> index 2053d46..721ca1e 100644
>> --- a/meta/classes/package.bbclass
>> +++ b/meta/classes/package.bbclass
>> @@ -1162,6 +1162,17 @@ python populate_packages () {
>>                  continue
>>              seen.append(file)
>>
>> +            prohibited_path =3D d.getVar('PROHIBITED_PATH')
>> +            if prohibited_path is not None:
>> +                for p in prohibited_path.split():
>> +                    exactmatch =3D True
>> +                    if p.endswith("*"):
>> +                        p =3D p[:len(p)-1]
>> +                        exactmatch =3D False
>> +                    if file[1:].startswith(p) and ((file[1:] !=3D p) or
>> exactmatch) :
>> +                        msg =3D "%s is in a prohibited path.\n" % file[=
1:]
>> +                        package_qa_handle_error("prohibited-path", msg,
>> d)
>>
>
> Unless I=E2=80=99m missing something, you aren=E2=80=99t checking for sta=
rtswith(p +
> os.sep), so a file in libexec would match a prohibited path of lib, as it=
=E2=80=99d
> still start with that, no?
>

You might also consider some form of path normalization if you=E2=80=99re c=
omparing
directly like this, otherwise i.e. //foo wouldn=E2=80=99t match /foo, even =
though
it=E2=80=99s the same path.
--=20
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--001a114295ea88dedc055de7ea69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Nov 13, 2017 at 7:10 PM, Christopher Larson <span dir=3D"ltr">&=
lt;<a href=3D"mailto:kergoth@gmail.com" target=3D"_blank">kergoth@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div clas=
s=3D"h5">On Mon, Nov 13, 2017 at 11:17 AM, Martyn Welch <span dir=3D"ltr">&=
lt;<a href=3D"mailto:martyn@welchs.me.uk" target=3D"_blank">martyn@welchs.m=
e.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: Fabien L=
ahoudere &lt;<a href=3D"mailto:fabien.lahoudere@collabora.co.uk" target=3D"=
_blank">fabien.lahoudere@collabora.co<wbr>.uk</a>&gt;<br>
<br>
Sometimes we wish to ensure that packages don&#39;t install files or<br>
directories somewhere that may prove detrimental to the operation of the<br=
>
system. For example, this may be the case if files are placed in a<br>
directory that is utilised as a mount point at run time, thus making them<b=
r>
inaccessible once when the mount point is being utilised.<br>
<br>
Implement the prohibited-path QA test, which enables such locations to be<b=
r>
specified in a &quot;PROHIBITED_PATH&quot; variable. This implementation al=
lows for<br>
exact matches and simple wildcards (paths ending with an asterisk. An<br>
error will be raised should a match be found, or in the case of a<br>
wildcard, for any files added below the specificed location(s).<br>
<br>
Signed-off-by: Fabien Lahoudere &lt;<a href=3D"mailto:fabien.lahoudere@coll=
abora.co.uk" target=3D"_blank">fabien.lahoudere@collabora.co<wbr>.uk</a>&gt=
;<br>
Signed-off-by: Martyn Welch &lt;<a href=3D"mailto:martyn@welchs.me.uk" targ=
et=3D"_blank">martyn@welchs.me.uk</a>&gt;<br>
---<br>
=C2=A0meta/classes/insane.bbclass=C2=A0 |=C2=A0 2 +-<br>
=C2=A0meta/classes/package.bbclass | 11 +++++++++++<br>
=C2=A02 files changed, 12 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass<br>
index def9c70..fb10681 100644<br>
--- a/meta/classes/insane.bbclass<br>
+++ b/meta/classes/insane.bbclass<br>
@@ -33,7 +33,7 @@ ERROR_QA ?=3D &quot;dev-so debug-deps dev-deps debug-file=
s arch pkgconfig la \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0perms dep-cmp pkgvarcheck p=
erm-config perm-line perm-link \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0split-strip packages-list p=
kgv-undefined var-undefined \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0version-going-backwards exp=
anded-d invalid-chars \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 license-checksum dev-elf file-rd=
eps \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 license-checksum dev-elf file-rd=
eps prohibited-path \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
=C2=A0# Add usrmerge QA check based on distro feature<br>
=C2=A0ERROR_QA_append =3D &quot;${@bb.utils.contains(&#39;DISTRO_<wbr>FEATU=
RES&#39;, &#39;usrmerge&#39;, &#39; usrmerge&#39;, &#39;&#39;, d)}&quot;<br=
>
diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass<br=
>
index 2053d46..721ca1e 100644<br>
--- a/meta/classes/package.bbclass<br>
+++ b/meta/classes/package.bbclass<br>
@@ -1162,6 +1162,17 @@ python populate_packages () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0seen.append(file)<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prohibited_path =3D d.getVar(&#3=
9;PROHIBITED_PATH&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if prohibited_path is not None:<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for p in prohibite=
d_path.split():<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exac=
tmatch =3D True<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if p=
.endswith(&quot;*&quot;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 p =3D p[:len(p)-1]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 exactmatch =3D False<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if f=
ile[1:].startswith(p) and ((file[1:] !=3D p) or exactmatch) :<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 msg =3D &quot;%s is in a prohibited path.\n&quot; % file[1:]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 package_qa_handle_error(&quot;prohi<wbr>bited-path&quot;, msg, d=
)<br></blockquote><div><br></div></div></div><div>Unless I=E2=80=99m missin=
g something, you aren=E2=80=99t checking for startswith(p + os.sep), so a f=
ile in libexec would match a prohibited path of lib, as it=E2=80=99d still =
start with that, no?</div></div></div></div></blockquote><div><br></div><di=
v>You might also consider some form of path normalization if you=E2=80=99re=
 comparing directly like this, otherwise i.e. //foo wouldn=E2=80=99t match =
/foo, even though it=E2=80=99s the same path.</div></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Christopher Larson<br>kergoth at gmail dot com<br>Found=
er - BitBake, OpenEmbedded, OpenZaurus<br>Senior Software Engineer, Mentor =
Graphics</div></div></div></div>
</div></div>

--001a114295ea88dedc055de7ea69--
