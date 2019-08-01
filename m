Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2370E00D75; Wed, 31 Jul 2019 23:39:19 -0700 (PDT)
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
	*      [209.85.166.67 listed in list.dnswl.org]
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FA25E00B31
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 23:39:19 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id s7so141774072iob.11
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 23:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YlxITFqyNiuiAkVuLtvq7dVZgOzTcZI2iL8Ob0igs88=;
	b=iOwPuZWNddViX+Z8irg7v70Oc84Q0PWVpxxuwKkqodBW/zCg1QoIvLLjYUVK5wGT7+
	YcIarEsbpYbn9lG8/4FhlHMoiKjdDXHUFCrSUe+KPMBHuSBNIPq6+Sydzy0OfH1aUnET
	N1kIyei5tQiqru9I6IeYM5Vf5IaL45tuJ6d75b3wFPATGWNQcKwaY7lAM2a+F3Ik08CW
	HqmNchpY5XTvrGKR9+YLx9fydD73gxG1tlyR7Jaa1mqn3PiZNoSIr0BHsbcm7E+eJuTC
	vWZavrxxcw/9QzI/j8Qt5V+fJG6TJOQdxOedwvLxVr73NMjqP1MrvXN+WEqyUzkoQaVp
	/amQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YlxITFqyNiuiAkVuLtvq7dVZgOzTcZI2iL8Ob0igs88=;
	b=YCcahTHbAz86lqaADtN85uxjE8z+P2E8JYkK/bYyiYy8gm/qt5jXFr+hMpEg6bbhS/
	OEsoqIJ9YIhK5fayBU+XqUGkiDFZIxFSpP6Rt7Hk0jaIMBv0mkuUCgNQFtC2C3LUAMxB
	jn0xkfCsA0rPlMq4FrA31Z6gPunkF1hjmPveRj2kWOXd0hUznnEzx+/3+pUN4mzPmJ8t
	D2TtfZdmh/nvyVMGQgbzDzsiLjBJcyFgn9KAuQFwGnTbwQt3puf43WK5q803TWdwurF0
	kvOeadvtsm0spM6/gn2GnkO4GLg3l7iiq32HmDFLbNgGoQoS9PeufsQ2F4O5qxMvCjfb
	2QiA==
X-Gm-Message-State: APjAAAWJS5d/dgXJmmYI2gWeRSZj/ApW/2q9HZohtZsUjTbCJC67eQL9
	VYTYWrraDAc/gBxrEyR3K1Mr86TYarv6V7vU2B0jwhLE
X-Google-Smtp-Source: APXvYqwh5rPTx9MAUwbiJURW1u4BMyO2SoeB6p0LQR3MNlcUJmmtXCIgWcaMJjW3pRFBe+nrr+teCynrfxIbO62mSkA=
X-Received: by 2002:a5e:c247:: with SMTP id w7mr48263942iop.72.1564641558677; 
	Wed, 31 Jul 2019 23:39:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Wed, 31 Jul 2019 23:39:18
	-0700 (PDT)
In-Reply-To: <3cbd7b9c-5040-a9e6-0100-7453e399e067@ibeeto.com>
References: <CAA=hcWR8QPjhCKJV-Ex1fxrizn1sa8eDEo8HXawVEZaTBkjovg@mail.gmail.com>
	<3cbd7b9c-5040-a9e6-0100-7453e399e067@ibeeto.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 1 Aug 2019 16:39:18 +1000
Message-ID: <CAA=hcWTFxD3hs0FkHYZBC_CMdYkDe1NNywiJjE0jrT1pC0_u7w@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto build failed to include service file in /deplogy/images/image.wic.gz
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
X-List-Received-Date: Thu, 01 Aug 2019 06:39:19 -0000
Content-Type: text/plain; charset="UTF-8"

Thank you so much Rudolf, that was indeed solved the problem.

Great appreciate it.

Cheers.

- JH

On 8/1/19, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
> JH,
>
> To enable systemd service for your application your  recipe needs to
> inherit the systemd class and install the service file in the proper
> directory. Here is what it should look like:
>
> inherit systemd
>
> SYSTEMD_SERVICE_${PN} = "my-app.service"
> SYSTEMD_AUTO_ENABLE = "enable"
>
> do_install_append () {
>     install -d ${D}${systemd_system_unitdir}
>     install -m 0644 ${S}/my-app.service ${D}${systemd_system_unitdir}
> }
>
> SYSTEMD_AUTO_ENABLE = "enable" is not strictly required as it is the
> default. If you don't want to enable your service by default set the
> variable to "disable".
>
> :rjs
>
> On 7/31/19 4:04 PM, JH wrote:
>> HI,
>>
>> I have been struggling to find a fix for missing service file, I found
>> another solution posted from the Internet to use FILES_${PN} +=
>> "${systemd_system_unitdir}/dl-mgr.service" at the end of the bb file:
>>
>> install -d ${D}${systemd_system_unitdir}
>> install -m 0644 ${WORKDIR}/dl-mgr.service ${D}${systemd_system_unitdir}
>>
>> As well as this to the end of the .bb file
>>
>> FILES_${PN} += "${libexecdir}/dl-mgr.sh"
>> FILES_${PN} += "${systemd_system_unitdir}/dl-mgr.service"
>>
>> But I could not build it "unprased line FILES_${PN} +=
>> "${systemd_system_unitdir}/dl-mgr.service", could anyone help please?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - JH
>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3396 x700
>
>
>

