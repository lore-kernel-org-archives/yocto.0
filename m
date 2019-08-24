Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A1EBE00C25; Sat, 24 Aug 2019 01:16:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 226E1E00B8E
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 01:16:41 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id j5so25574440ioj.8
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 01:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XU4kHGubUqk8+zKoiFydMHJVVhyfAGiCO7ZgEvpEves=;
	b=u3f40AUBfmSpdja3UaU7UsEQ4GGBg9duu/CkUAlT3CrNUj75lveqeaW0XRYTB6Jkz8
	JZ4V236OS0+uzQ8iE63lxpy+q9vleWlZBYOvbKNqYMrSrpedq171g+7Tw6fHzZFuB7dp
	HPKlCqwPiUck1OCbgjflF4PAiWlGAMI8oo8Cb1QxyT7i7tfhNo69vXGKZANnNbgxqawC
	brjeW5jGm9k1zVdOF2CC7kHTJLoe5ZDDqLhPPEHldR6GQwQhiGD0/CO2Z4rst7oFazYW
	uwamD9XqA8DgYNim3k7Pr9Bf+x96LPbEh98+ye0VlSp+bln1DVX/Pyj3GkuLPTECr4JM
	WUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XU4kHGubUqk8+zKoiFydMHJVVhyfAGiCO7ZgEvpEves=;
	b=OEQsa4MR9F6TWCU9IwVHeeGVhjEK4qmkKaZLGKIz8U/zjvodzxc3TC8h+1qejWeXie
	H6Mb3tkpPwAZr9MVBMn/WhTwPKBaY/LtmtfOvteUGQL1Gdg7cUpDkcEqCNP6IdLn6+Fk
	TmJdPkAmIroD2jH2X/afbKor8zURZcaomQTwgTPTXiAi7vpysglSQKsvOgfBdPiYVPPI
	PT+4I2hUkSCy1veFZ2BN7z3btJvfEIUqgPtdXtnysYXoybE5HhCF8b0IFNXt/VqTCmP2
	tJ2CUyb2X04uHzyDbCAkYbu64eYPjI2QWSEfstcW35s3IBc4N/WGTg1HTaURir33JwMa
	K1Qw==
X-Gm-Message-State: APjAAAU989nHSdLNGVD5tXPVGutXh186nh+9VlKX96EOdTJzyR3bfMTT
	uCnNvwVF2Gu3xdtqLHVRTNT8KxSLnbbi2T1C5MeTJmJ6
X-Google-Smtp-Source: APXvYqzhiN2qJvtmLdNsM6DPhglPx7ZJF60ofmZsFTAHaMaMNKJgVOW1RNB9H96p3Yj0mMFvGq+sxZarRm6c5BbkdIk=
X-Received: by 2002:a5d:8f8a:: with SMTP id l10mr11694031iol.306.1566634601449;
	Sat, 24 Aug 2019 01:16:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a3c1:0:0:0:0:0 with HTTP; Sat, 24 Aug 2019 01:16:40
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Sat, 24 Aug 2019 18:16:40 +1000
Message-ID: <CAA=hcWQUjuV8O9OJosai9PgXgsSuXu1mn5JVcMh00g4wRFwikQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: To enable all service files
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
X-List-Received-Date: Sat, 24 Aug 2019 08:16:42 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have multiple services files defined in following statements, will
it all automatically be enabled?

SYSTEMD_SERVICE_${PN} = "${PN}.service app1.service app2.service
app2.timer app3.service"
SYSTEMD_AUTO_ENABLE_${PN} = "enable"

Thank you.

Kind regards,

- jh

