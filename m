Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D6DDE00ED4; Thu,  1 Mar 2018 06:17:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 199E1E00DF0
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 06:17:12 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id y137so7685079qka.4
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 06:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KMQ9fiZ9ZhrGkw7zCgbVsihI40DrunuN1m/e9zRMdYs=;
	b=ZDdJOk6tpyKrdUeT7b7UxjfYU/JYbAkFa3FGVNCV9sETA+fpNQIeiyQs3nj6CAubP/
	QIlfP/1Z3/ath0djCy8bN3YFwrmcYT9uQ9y2P7qCfcBeZ2wOrBG54ZfAsQxeNLh7Mwox
	KkSo7JwOiqgf9ITGoydQNgdwOyx44uhzdf2VbV09J3Yt/3/ItGBOAq8Vu0WD5LlBZRW2
	vodn0P7dylIrlt+8u5oN/J83b3NNPPctzmjRRC13TUkrwnk9SN3K0UMGHDR9J+WQpCN/
	IJKs4j8u+3Xb936hN8jWWIasDUhtsPJZ2bXX1+dRsEhxHxYWza2rZXsKox+PwvhAbWc7
	Odjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KMQ9fiZ9ZhrGkw7zCgbVsihI40DrunuN1m/e9zRMdYs=;
	b=stpWCBEwRuB/fzqNU7vnU9GZkLy+QGzb3xpDbM9NEXPd/o/+vitsIflJf8X7iYglyM
	U6uCxaYfoDxzn1Ujb09OIyaz4+T/WsWxOFiU+51vClaUkIUXZIPRcS3KlV5UJS6p8usX
	2/5cV1k+snIiEi9dLfxTWnfUc//DpTw8XanS128dzjYxy50SiNDH2f8Q6dQcfmyv0Rh+
	IsLug8la5FAR3CyqEvawef7FPymXAx6fG6jnr7nZfO6rLBkbr7oDROHSHquYCjIpqeUY
	MLchsMZCE4Uk9qCCEYBQ+NOnDdWO+ss7cQzGNQliibD5GwePVsnDfGgeUpyAxJlp5STq
	jNlw==
X-Gm-Message-State: AElRT7HYUiL2SLZ8xykojezPOhAx41rZ+8GQbuWzn7rgpcDS7Dx+FcGi
	el47ZzLkgY1k786ibJWe0iBcUWVRs4aif6EH/hM=
X-Google-Smtp-Source: AG47ELtFqH8x75hmYyBAlRdNMBF3SB2Lrn4Irb0uC8opyZR0D3HXDL9cN2WQD34ib+FJwYwPKsyR2ENbKmQ5XhS4Xfw=
X-Received: by 10.55.57.135 with SMTP id g129mr2966490qka.212.1519913831941;
	Thu, 01 Mar 2018 06:17:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.130.100 with HTTP; Thu, 1 Mar 2018 06:17:11 -0800 (PST)
In-Reply-To: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Mar 2018 15:17:11 +0100
Message-ID: <CAGAf8LxhYA7pS2jzVu-OFq8U2AHSmARE4sJdrPZFFRrt+K3URw@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 01 Mar 2018 14:17:13 -0000
Content-Type: multipart/alternative; boundary="001a1145b6980aca0905665a8473"

--001a1145b6980aca0905665a8473
Content-Type: text/plain; charset="UTF-8"

*git://git.kernel.org/pub/scm/linux/kernel/git/bwh/linux-cip.git
<http://git.kernel.org/pub/scm/linux/kernel/git/bwh/linux-cip.git>*

True Real Time 4.4.112.

Zoran
_______

On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> hey guys,
>
> any body tried the real time kernel? I get an error, it is snot in the
> compatibility list.
> can we skip it?
>
> thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1145b6980aca0905665a8473
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><code><strong>git://<a href=3D"http://git.kernel=
.org/pub/scm/linux/kernel/git/bwh/linux-cip.git">git.kernel.org/pub/scm/lin=
ux/kernel/git/bwh/linux-cip.git</a></strong></code><br><br></div>True Real =
Time 4.4.112.<br></div><div><br></div>Zoran<br>_______<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 14, 2017 at 2:5=
8 AM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@=
gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>hey guy=
s,<br><br></div>any body tried the real time kernel? I get an error, it is =
snot in the compatibility list.<br></div>can we skip it?<br><br></div>thank=
s<br></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1145b6980aca0905665a8473--
