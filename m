Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E843E00B3D; Wed,  2 Nov 2016 18:17:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0729BE00A64
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 18:17:26 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id v84so51751419oie.3
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 18:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=+P7GkTR0h7d3XTuw630GKohaF+gQn60Ym+oR9krDS9Y=;
	b=dnP1FDRNQLmdscjvUociSnqL8Qz0mW8CegevTCMlnk4DdkJxEv7CzBffe/Q90dDoQr
	b0NqMU1/792NVpKatLI36YGcuzsTAFra2n8paOhJGHyxQa8URrYm+i2+LGHbBEjRHLkU
	8t7fVvv7iTB2LFC7MYDwt/C4yQ4ny3Zg/4rE0mf1tSstC6E3hLy/qdMxmb7uaW0FVbdf
	mUr6xb7TsVWuK8XINMsv0fuXLZl/h71dRgN364uF1Gf9LVNCzTFOHNVlAaYtEl708hL+
	fJQTC0mctYTk5FQZMXyuI4Rk6yH8CgmZ1SONs27JzB+UvzXFuAS8yR7NZIB2CB02Pmvm
	3jEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=+P7GkTR0h7d3XTuw630GKohaF+gQn60Ym+oR9krDS9Y=;
	b=BZ9BE9qeD2LW+O4J2T1syQmYlbVLEapfEwl4ilB2WNBkbYIis6YUpYjYukEvzGeFyD
	EmgBo/OiY8720mUixAqjH+W738Lk6rNvvJ4JF4FuyRi3FrJMoHNeuCi7McBGjk1QKoVn
	5L7NVkARQBeEs2AjBBUvgLFHj/RJW9lkEKiU4hgIC9HxbJs78VYLaZVFH6mnEFOjzez9
	XTpXDY5qoaxp1CU2gHZRDIazQ11IMEKWVlI//+RHc7+iOEo+EsRbGy8lWl/nvrrjjUbP
	gcZ8kkcM6ns6pBHZtTRcajjINrhj+bxWIDKAGTNFKB3u5lrmJx1mzisMF94uDo17k0Va
	9mvg==
X-Gm-Message-State: ABUngvc7M0mogE6h+eVEccWjZBoT46XF9tpBnHMi+cwdutkJ1fc9us6VfjRaAazX1Y5Vgw==
X-Received: by 10.36.125.5 with SMTP id b5mr4136764itc.62.1478135845751;
	Wed, 02 Nov 2016 18:17:25 -0700 (PDT)
Received: from [172.16.24.73] (96-92-69-241-static.hfc.comcastbusiness.net.
	[96.92.69.241]) by smtp.gmail.com with ESMTPSA id
	c101sm1872910ioj.25.2016.11.02.18.17.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Nov 2016 18:17:24 -0700 (PDT)
To: "Rifenbark, Scott M" <srifenbark@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <788fc806-0988-46d0-29c3-7965591a35b8@gmail.com>
Date: Wed, 2 Nov 2016 21:17:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Thu, 03 Nov 2016 01:17:28 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2016 11:27 AM, Burton, Ross wrote:
> Scott, can you update the list at 
> http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#detailed-supported-distros 
> so that it reflects the list in the code:
>
> SANITY_TESTED_DISTROS ?= " \
>             poky-1.8 \n \
>             poky-2.0 \n \
>             poky-2.1 \n \
>             poky-2.2 \n \
>             Ubuntu-14.04 \n \
>             Ubuntu-14.10 \n \
>             Ubuntu-15.04 \n \
>             Ubuntu-15.10 \n \
>             Ubuntu-16.04 \n \
>             Fedora-22 \n \
>             Fedora-23 \n \
>             Fedora-24 \n \
>             CentOSLinux-7.* \n \
>             Debian-8.* \n \
>             openSUSE-13.2 \n \
>             SUSELINUX-42.1 \n \
>             "

The website also needs to list openSUSE 42.1 (Leap). Thanks!

