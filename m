Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3682.1589499070398419367
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 16:31:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CTxA69ib;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E45BFE01B62; Thu, 14 May 2020 16:31:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5F38E01B60
	for <yocto@yoctoproject.org>; Thu, 14 May 2020 16:31:06 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id r2so646353ilo.6
        for <yocto@yoctoproject.org>; Thu, 14 May 2020 16:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Zrwg1m9MQ5bkA07xKT9bcsKxfRo7AHF/Xm5EH+2uspA=;
        b=CTxA69ibsz4CQJvJUStuYCyqHtJn6XXzW74AHhR64wv4SuHlS3trP87P3jkEgg76Na
         oKY1jeCMWyDSOQc13l9rMkWZnSixaHYYj2KTT0oFGIONfoF+5i818eQOYQ33ftS0Zu9A
         o8HFsYCfOKdC3y/xb9ouQONnA43C1FQF8VM+TyNJ4CR+EjOmfFn1LKQ4watcwzTyom8P
         fcjMv6T/7j+KY1QLpQo8q5uNNdCvG5+1vRL/mfvW4QiIikqNWXIqujKgelAvSDnamo3Y
         8yYRrUg1CQAwWeOSxs0y/57BLJ4Brw6QxPodKtIudMPmHXGhKn43qhJbMvoxKzb1R5+4
         n4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Zrwg1m9MQ5bkA07xKT9bcsKxfRo7AHF/Xm5EH+2uspA=;
        b=KR0hpxAbgKTF283p4II7sN95lgIiHNO2n8Rn4TjGCyiCapzfl/jxM8jjbdbMHh2CPV
         SfPerB9y84r5mjhxCRdilf/sA1eA7/qqGfjuyGFc8iAi6UBGi/+yhHN4tpB8gFIEFb8M
         tZpY2VY5WV4HXsIDOABetlOl3xEA4+EjwSTc0OVQRAHqtbAhredoHtZeOzJpBMtd/CcB
         W4yzUngwblC6VaWwRhxNXPKiIztbiKGDo06b5H62iQ0uz1Xg7KZi7uD/RHRGtWEVYG22
         2OYHD+vVhBMc3ys+ve1evozS+zsnnyLrb3UM7DZzX/7yknnhrxa40gEeMm7wY6iHLd8G
         YE3A==
X-Gm-Message-State: AOAM5310BDjoa6lRXvrj7W9r39GBzJkzNNsetcwiBQo/Xqzf0xjdJi2E
	ooCXp6k9FZHZOQcgqXeYuqa+lDQad5sM64YYWpeba8y9
X-Google-Smtp-Source: ABdhPJzjxlhIYUw5Vpr2zPyqVMTep6ho1Ox+ndiwh81JrL/8tGODXOHiJPJ9CH+d6Jz7jEk/Jr/rloZnj6or3xVpO28=
X-Received: by 2002:a05:6e02:5c5:: with SMTP id l5mr684218ils.170.1589499065921;
 Thu, 14 May 2020 16:31:05 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005141810220.28376@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2005141810220.28376@localhost.localdomain>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Thu, 14 May 2020 16:30:55 -0700
Message-ID: <CANx9H-BJ7=5K3OY2046en4UObisDsTwkKbw+z=YYx42y_TjrPw@mail.gmail.com>
Subject: Re: [yocto] problems creating acct at wiki.yoctoproject.org
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003200fa05a5a4170c"

--0000000000003200fa05a5a4170c
Content-Type: text/plain; charset="UTF-8"

On Thu, May 14, 2020 at 3:12 PM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   trying to edit wiki, so trying to create acct at
> https://wiki.yoctoproject.org/wiki/Special:RequestAccount, and am
> getting:
>
>   Error sending mail:
>   Unknown error in PHP's mail() function.
>
> are there known issues with registering at the wiki?
>

No data,  but hunch that a link to the new mail address url is needed...

>
> rday
> 
>

--0000000000003200fa05a5a4170c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, May 14, 2020 at 3:12 PM Robert P. J. Day &lt;<a hr=
ef=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><br>
=C2=A0 trying to edit wiki, so trying to create acct at<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Special:RequestAccount" rel=
=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Speci=
al:RequestAccount</a>, and am<br>
getting:<br>
<br>
=C2=A0 Error sending mail:<br>
=C2=A0 Unknown error in PHP&#39;s mail() function.<br>
<br>
are there known issues with registering at the wiki?<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">No data, =C2=A0=
but hunch that a link to the new mail address url is needed...</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><br>
rday<br>
<br>
</blockquote></div></div>

--0000000000003200fa05a5a4170c--
