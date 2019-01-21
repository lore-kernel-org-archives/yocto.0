Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1907DE00CE4; Mon, 21 Jan 2019 12:10:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
	[209.85.222.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427FFE0090E
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 12:10:19 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id d2so7332558ual.2
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 12:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=AqYj6lDWGSNFwfXTB+8fX64alvsHHHjmb22fN7QBUU4=;
	b=PNJ8OJI+ksHa0IUnW2dCrHdXNWu5Vz8Rkss3bqDFI85IQShy/Dg3RgKrANfw0vc9yi
	xb5e16IYXx2XZqJSfm3yYWpbFWruxC7U4vUojoa93cjQ0CnxuK1qJ7ykjXjOXS6keewO
	7KUAUglYH39pO7WbNVMF8viTH6L4aT3cZLXSg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=AqYj6lDWGSNFwfXTB+8fX64alvsHHHjmb22fN7QBUU4=;
	b=pFd44G2cEd4Q74MyH95hjsrgOyge3PWNTopZJbJfuiDFnD8jY9i19GDrB2H2xKTo0p
	6cTFKY6Q4Ep50oJuyFHLykcvu6iCP2awrdndgeigG/pGtzifLqtfZqWwMd6k18K6NuGZ
	iAmm5xW8EGC0PAhoA4YOsohyvQfx+x+1E4qBX9IMplhD8st5q/gC0nKF28SnKn+0Zp6E
	0jbHCL7ShEGgXaT1j9GFFbMx9gxfwcMHvi7MpW35m9OzrujCO59l2scG2fsQpTIpXUPF
	MpJkyoBXneXy4jUAY/lJtelagKRlnonqZBilm44VRxcJ61Vkv1fMbh4MpO+Fy/JsgAJX
	bXuQ==
X-Gm-Message-State: AJcUukdNQxxW5FMMjXhvZ7pFjPJzshKqIL57GnDPCEEw2N/wTwKY7Fc9
	FhmavvO9Wgye+GY3YTyWvW9DwgCWJzTBzlI1r8TfE+v8BmA=
X-Google-Smtp-Source: ALg8bN4Pf8TCrs4fMcD8a5s7vM3lxQvtGb8shUodgcNdkiAUJq6lg8kb/pe1cQpbhPz0OCBrVLyEd2VPSW+5ivYlNTw=
X-Received: by 2002:ab0:3259:: with SMTP id r25mr11815308uan.108.1548101418607;
	Mon, 21 Jan 2019 12:10:18 -0800 (PST)
MIME-Version: 1.0
References: <1548036696-53945-1-git-send-email-li.zhou@windriver.com>
In-Reply-To: <1548036696-53945-1-git-send-email-li.zhou@windriver.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Mon, 21 Jan 2019 14:10:07 -0600
Message-ID: <CA+_Aqit2yfuJBewfQzUHA43Ma9dRG8Aw_jNq47zNL+U-iS2oZQ@mail.gmail.com>
To: Li Zhou <li.zhou@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner] ptest-runner: make DEFAULT_DIRECTORY be able to be defined when compiling
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
X-List-Received-Date: Mon, 21 Jan 2019 20:10:29 -0000
Content-Type: multipart/alternative; boundary="00000000000021ff23057ffd73a2"

--00000000000021ff23057ffd73a2
Content-Type: text/plain; charset="UTF-8"

Pushed, thx!,

http://git.yoctoproject.org/cgit/cgit.cgi/ptest-runner2/commit/?id=e1062f776eea60c50435c6b8ddf9714a31141aee

Feel free to update the recipe.

Cheers,
Anibal

On Sun, 20 Jan 2019 at 20:29, Li Zhou <li.zhou@windriver.com> wrote:

> In yocto project ptest data are installed to
> PTEST_PATH ?= "${libdir}/${BPN}/ptest". Here make DEFAULT_DIRECTORY
> be able to be defined outside of c code (e.g. passed in by CFLAGS),
> in case libdir isn't "/usr/lib", which will cause "No ptests found"
> error when running "ptest-runner" command. We will pass libdir to
> DEFAULT_DIRECTORY when compiling to avoid that error.
>
> Signed-off-by: Li Zhou <li.zhou@windriver.com>
> ---
>  main.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/main.c b/main.c
> index 83600b7..e963efe 100644
> --- a/main.c
> +++ b/main.c
> @@ -37,7 +37,9 @@
>
>  #include "utils.h"
>
> +#ifndef DEFAULT_DIRECTORY
>  #define DEFAULT_DIRECTORY "/usr/lib"
> +#endif
>  #define DEFAULT_TIMEOUT 300
>
>  static inline void
> --
> 1.9.1
>
>

--00000000000021ff23057ffd73a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Pushed, thx!,</div><div><br></div><d=
iv><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/ptest-runner2/commi=
t/?id=3De1062f776eea60c50435c6b8ddf9714a31141aee">http://git.yoctoproject.o=
rg/cgit/cgit.cgi/ptest-runner2/commit/?id=3De1062f776eea60c50435c6b8ddf9714=
a31141aee</a><br></div><div><br></div><div>Feel free to update the recipe.<=
/div><div><br></div>Cheers,</div><div dir=3D"ltr">Anibal</div><div dir=3D"l=
tr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sun, 20 Jan 2019 at 20:29, Li Zhou &lt;<a href=3D"mailto:li.zhou@windriver=
.com">li.zhou@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">In yocto project ptest data are installed to<br>
PTEST_PATH ?=3D &quot;${libdir}/${BPN}/ptest&quot;. Here make DEFAULT_DIREC=
TORY<br>
be able to be defined outside of c code (e.g. passed in by CFLAGS),<br>
in case libdir isn&#39;t &quot;/usr/lib&quot;, which will cause &quot;No pt=
ests found&quot;<br>
error when running &quot;ptest-runner&quot; command. We will pass libdir to=
<br>
DEFAULT_DIRECTORY when compiling to avoid that error.<br>
<br>
Signed-off-by: Li Zhou &lt;<a href=3D"mailto:li.zhou@windriver.com" target=
=3D"_blank">li.zhou@windriver.com</a>&gt;<br>
---<br>
=C2=A0main.c | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/main.c b/main.c<br>
index 83600b7..e963efe 100644<br>
--- a/main.c<br>
+++ b/main.c<br>
@@ -37,7 +37,9 @@<br>
<br>
=C2=A0#include &quot;utils.h&quot;<br>
<br>
+#ifndef DEFAULT_DIRECTORY<br>
=C2=A0#define DEFAULT_DIRECTORY &quot;/usr/lib&quot;<br>
+#endif<br>
=C2=A0#define DEFAULT_TIMEOUT 300<br>
<br>
=C2=A0static inline void<br>
-- <br>
1.9.1<br>
<br>
</blockquote></div></div></div>

--00000000000021ff23057ffd73a2--
