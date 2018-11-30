Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEDD4E00C8A; Thu, 29 Nov 2018 18:24:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84C8CE00C72
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2018 18:24:09 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id v6so3781231wrr.12
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2018 18:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HiCk7b9SjCBcXVhahx+CsajCpYcgl0Zyn8hJgUAH2Ro=;
	b=HfzKOIinldqfyj9Iw6rRUzNHZvTnrbOmHz3GWkRuvD+rTdO2N/Ag0eyNNtTihTi941
	kjSHnoDqjrqqbEqjM1ilFzVgoqjC/xsOUP4c31jvrlNE6QUACDJSAySeR0yWhDPKPYM9
	mMVPkhZehI1N7AVS32b/O23+/Wzp0Em5qP4fUBpXyl2fzlUFzNtBuZJ4mBE3LOQ1yEfq
	mDKak8sL3RHfbSRD5uaIE4XXhH2qWrKCtLG4Lk/E2mM1tdlMZ9nrdKOOPBvu+9+LD6c4
	XneTPNpenSBRjiH0WjCwHZV+PV6+be8A8PX3RaqkP93CaBLmXsokFb/aBCjhheS0FxgQ
	QJQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HiCk7b9SjCBcXVhahx+CsajCpYcgl0Zyn8hJgUAH2Ro=;
	b=Ksr8LIb7GVlW/qPE2SHLfM+C4tpwaXuRfQ0N+Y6eKSHngi0cwAhvG3jGduzM16e5Hi
	at+c+vnIH4h44HzNzGWUTpXFQjgyn3waycu1DTd7qnH3MXjI0kH+nQGL+D4F8VnXnc4O
	UwYl8rfHD50WOd2qUXL7ArMU9wn/v0JciAslAzdLUfQ9E4xrvdP7O8DswstLmPrN7p6i
	kuYVsAE7c8HLKbFTFgvkE7PT6JIFw0sDvT+DPZ/tJXEbSaAQ9cPCIrynPXX4jSpBD4ZQ
	B19+eZaC+OYcdfsl8GHLgbCZ7ChKzYihjdU/1JFB2OlBwE24Cno9ygggdPg3GcyXsNZa
	ar/w==
X-Gm-Message-State: AA+aEWYDGo5Wz0u2MeQj0bHUSAE4d/Xn/JHqXxMyWMvHpexO40WYQwkW
	v2Z7av0RpT/Y6jg6RH0GI+072LCFV/M66MrFUec4RQ==
X-Google-Smtp-Source: AFSGD/WORs5/K4KeM42aTQoXzHP4uXK+HNoOZjb9Du+5xXCn4JcWsh66J8YtzmbayINVWRLGRbPXHx+pIRb4CfCODbs=
X-Received: by 2002:a5d:4903:: with SMTP id x3mr3280242wrq.11.1543544648282;
	Thu, 29 Nov 2018 18:24:08 -0800 (PST)
MIME-Version: 1.0
References: <CAB=6tBRrH+BUNcQ4Hs_hyoNO8rP0VVbJkd5-tuE_yh6KYVn7HA@mail.gmail.com>
	<98a055a0-3e77-168a-338d-a6988a144cc0@windriver.com>
In-Reply-To: <98a055a0-3e77-168a-338d-a6988a144cc0@windriver.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 29 Nov 2018 18:23:56 -0800
Message-ID: <CAB=6tBQQBj+hoVWX41kArg9aCxYOpXwjcu1LR-1YJo-t7nQ=TQ@mail.gmail.com>
To: Qi.Chen@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Thud - /lib64 link - Build Failure
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
X-List-Received-Date: Fri, 30 Nov 2018 02:24:10 -0000
Content-Type: multipart/alternative; boundary="00000000000074b887057bd87e0e"

--00000000000074b887057bd87e0e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you, switching to IMAGE_PREPROCESS_COMMAND_append seems to have
solved the problem.

..Ch:W..

On Wed, Nov 28, 2018 at 7:14 PM ChenQi <Qi.Chen@windriver.com> wrote:

> This is because prelink_image is also in IMAGE_PREPROCESS_COMMAND.
>
> meta/classes/image-prelink.bbclass:IMAGE_PREPROCESS_COMMAND_append_libc-g=
libc
> =3D " prelink_setup; prelink_image; "
>
> And as it's using _append, it will be after your 'symlink_lib64'.
> Maybe using IMAGE_PREPROCESS_COMMAND_append =3D " symlink_lib64; " would
> work for you?
>
> Best Regards,
> Chen Qi
>
> On 11/29/2018 08:09 AM, Chuck Wolber wrote:
>
> Background: I have an image that works in pyro. I am migrating the image
> to thud.
>
> Some of the add-on code to our image requires the /lib64 directory (in
> particular the VirtualBox Additions). I have proven that a simple symlink
> (/lib -> /lib64) fixes the problem. This symlink was being applied with t=
he
> following code at the very bottom of the image:
>
> IMAGE_PREPROCESS_COMMAND +=3D "symlink_lib64; "
>
> symlink_lib64() {
>
>     ln -s /lib ${IMAGE_ROOTFS}/lib64
>
> }
>
>
> When I use that same code with Yocto thud, I get the following build erro=
r:
>
> DEBUG: Executing shell function prelink_image
>
> Size before prelinking 818112.
>
> /build/poky/tmp/work/qemux86_64-linux/common-os-image/1.0-r0/recipe-sysro=
ot-native/usr/sbin/prelink:
> Could not record directory /lib/modules-load.d: No such file or directory
>
> WARNING: exit code 1 from a shell command.
>
>
> Looking at the image generation diagram here (
> https://www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.htm=
l#image-generation-dev-environment),
> it would seem to indicate that IMAGE_PREPROCESS_COMMAND runs after the
> linker steps in do_rootfs. So it is unclear why prelink is failing during
> the do_image phase.
>
> Where is the correct place to create a /lib -> /lib64 symlink in our imag=
e
> recipe?
>
> Thank you,
>
> ..Ch:W..
>
>
>
>

--=20
=E2=80=9CI would challenge anyone here to think of a question upon which we=
 once
had a scientific answer, however inadequate, but for which now the best
answer is a religious one."  -Sam Harris

--00000000000074b887057bd87e0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, switching to IMAGE_PREPROCESS_COMMAND_append se=
ems to have solved=C2=A0the problem.<div><br></div><div>..Ch:W..</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 28, 2018 at 7:=
14 PM ChenQi &lt;<a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"m_3769798956601763086moz-cite-prefix">This is because pre=
link_image is also
      in IMAGE_PREPROCESS_COMMAND.<br>
      <br>
meta/classes/image-prelink.bbclass:IMAGE_PREPROCESS_COMMAND_append_libc-gli=
bc
      =3D &quot; prelink_setup; prelink_image; &quot;<br>
      <br>
      And as it&#39;s using _append, it will be after your &#39;symlink_lib=
64&#39;.<br>
      Maybe using IMAGE_PREPROCESS_COMMAND_append =3D &quot; symlink_lib64;=
 &quot;
      would work for you?<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 11/29/2018 08:09 AM, Chuck Wolber wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>Background: I have an image that works in pyro. I am
            migrating the image to thud.=C2=A0=C2=A0</div>
          <div><br>
          </div>
          Some of the add-on code to our image requires the /lib64
          directory (in particular the VirtualBox Additions). I have
          proven that a simple symlink (/lib -&gt; /lib64) fixes the
          problem. This symlink was being applied with the following
          code at the very bottom of the image:
          <div><br>
          </div>
          <div>
            <blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddin=
g:0px">
              <div>
                <p class=3D"m_3769798956601763086gmail-p1"><span class=3D"m=
_3769798956601763086gmail-s1" style=3D"font-variant-ligatures:no-common-lig=
atures">IMAGE_PREPROCESS_COMMAND
                    +=3D &quot;symlink_lib64; &quot;</span></p>
                <p class=3D"m_3769798956601763086gmail-p1"><span class=3D"m=
_3769798956601763086gmail-s1" style=3D"font-variant-ligatures:no-common-lig=
atures">symlink_lib64()
                    {</span></p>
                <p class=3D"m_3769798956601763086gmail-p1"><span class=3D"m=
_3769798956601763086gmail-s1" style=3D"font-variant-ligatures:no-common-lig=
atures"><span class=3D"m_3769798956601763086gmail-Apple-converted-space">=
=C2=A0 =C2=A0 </span>ln
                    -s /lib ${IMAGE_ROOTFS}/lib64</span></p>
                <p class=3D"m_3769798956601763086gmail-p1"><span class=3D"m=
_3769798956601763086gmail-s1" style=3D"font-variant-ligatures:no-common-lig=
atures">}</span></p>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>When I use that same code with Yocto thud, I get the
              following build error:</div>
            <div><br>
            </div>
          </div>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <div>
              <div>
                <p class=3D"m_3769798956601763086gmail-p1"><span class=3D"m=
_3769798956601763086gmail-s1" style=3D"font-variant-ligatures:no-common-lig=
atures">DEBUG:
                    Executing shell function prelink_image</span></p>
                <p class=3D"m_3769798956601763086gmail-p1"><span class=3D"m=
_3769798956601763086gmail-s1" style=3D"font-variant-ligatures:no-common-lig=
atures">Size
                    before prelinking 818112.</span></p>
                <p class=3D"m_3769798956601763086gmail-p1"><span class=3D"m=
_3769798956601763086gmail-s1" style=3D"font-variant-ligatures:no-common-lig=
atures">/build/poky/tmp/work/qemux86_64-linux/common-os-image/1.0-r0/recipe=
-sysroot-native/usr/sbin/prelink:
                    Could not record directory /lib/modules-load.d: No
                    such file or directory</span></p>
                <p class=3D"m_3769798956601763086gmail-p1"><span class=3D"m=
_3769798956601763086gmail-s1" style=3D"font-variant-ligatures:no-common-lig=
atures">WARNING:
                    exit code 1 from a shell command.</span></p>
              </div>
            </div>
          </blockquote>
          <div>
            <div><br>
            </div>
            <div>Looking at the image generation diagram here (<a href=3D"h=
ttps://www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.html#i=
mage-generation-dev-environment" target=3D"_blank">https://www.yoctoproject=
.org/docs/2.6/overview-manual/overview-manual.html#image-generation-dev-env=
ironment</a>),
              it would seem to indicate that IMAGE_PREPROCESS_COMMAND
              runs after the linker steps in do_rootfs. So it is unclear
              why prelink is failing during the do_image phase.=C2=A0</div>
            <div><br>
            </div>
            <div>Where is the correct place to create a /lib -&gt;
              /lib64 symlink in our image recipe?</div>
            <div><br>
            </div>
            <div>Thank you,</div>
            <div><br>
            </div>
            <div>..Ch:W..</div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"m_3769798956601763086mimeAttachmentHeader"></field=
set>
      <br>
    </blockquote>
    <p><br>
    </p>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr">=E2=80=9CI would challenge anyone here to think of a question upon whic=
h we once had a scientific=C2=A0answer, however inadequate, but for which n=
ow the best answer is a religious one.&quot;=C2=A0 -Sam Harris</div></div>

--00000000000074b887057bd87e0e--
