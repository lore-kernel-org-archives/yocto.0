Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0273E00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:22:04 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so2255749lah.35
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VHrepHEAokfh0vrB5xTzxH4aGh0AMnsy1Bx4mZN7bpU=;
	b=lctC9Fs3Rb8aCProAG5jFoy0lBQ3EURJL+b7O+mOKF9gIGYQzizdKxqpK8RLDpJH2N
	02n7VerKUasqw45bFTsxqlTVWFsikgxZ9H9FDD/oRTZLwe5cYa8FXTqARHezjTyDSE9z
	eYdUZ4LM4pCux6AoGVkUolKIKjOdn0TxlcJR/puNJf6S6GENy9MxyjXWmfiG41K4FLmk
	/WuC+3yJsfay+nMLitYIqyTeZWl3u4P/oR+ITkC7gxMhVC0fPYP3rc9Y2cZqMa/Dp7Im
	1/+wGV0FtrslmXC1Rc2Qg9bJnaw6pscWa8KEM1GXLxf3Vy+5fwtaWkuq0h+TurWUSmou
	HawA==
MIME-Version: 1.0
Received: by 10.152.104.240 with SMTP id gh16mr760814lab.56.1355437323048;
	Thu, 13 Dec 2012 14:22:03 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Thu, 13 Dec 2012 14:22:02 -0800 (PST)
In-Reply-To: <20121202174723.GA91088@gmail.com>
References: <20121202174723.GA91088@gmail.com>
Date: Thu, 13 Dec 2012 17:22:02 -0500
Message-ID: <CAHUNapQYPx3Aq+mPJm3=g+U3HHVO-PMv5hb3-Xw2Wn_NfyWeQw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?ISO-8859-1?Q?Eren_T=FCrkay?= <eren@hambedded.org>
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: [Draft] From Bitbake Hello World To an Image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Dec 2012 22:22:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thank you, I enjoyed reading your document. I especially liked the top
part which talked about creating your own tasks (which 'turned the
light on' for how OE/Yocto use bitbake). I also wasn't aware of the
vim helpers which come as part of bitbake.

