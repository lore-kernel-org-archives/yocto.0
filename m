Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00CA5E00726; Mon, 26 Jun 2017 07:29:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8C8E0048B
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 07:29:11 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id 62so2973443wmw.1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 07:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wWD+RFHAbsZfZkBD29mfFxrKQantKdCB4fZWHj6553o=;
	b=UDBhFMUaZPlJSDqJSpqpHSPYdeinTPlVdYdMdTV0jR/ONTIJOcRhaEmNDLO76RYDok
	6J36sKLeX1gaybrWtYdkhlNccZDTwIAqi0WBTc0ba4wk/tBhu9czhn/kCuWOO49xsEy8
	QmswRdGBVIDcLh5ZBG0sQgSU7xcT6HUvogygBC9jWnAt+ZxQWeriwiszmrGBAdHtBOua
	+5QWQaHhmpO2O2/BYF1telJhEcVrvVzFx5iKgTUxXpGQAt8kQkGEZ3bRyKJFJev6V8on
	Q1iMk9dEAwYNd83UVABG4/0C/lY0AmGfUwBTUC3+y1XK/UkL9tbwUTj9FYrdk9FzznGU
	h6GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wWD+RFHAbsZfZkBD29mfFxrKQantKdCB4fZWHj6553o=;
	b=QESORSTxj12dresaAS/SBqIQwfg3m2amrpZaqwKNxf8180AWm2vxqVnIpnv4z5lC9l
	k47Rv6VW8VpTS5GClU2tB/ZrfOhUOTR2QFNrkzwZyEnj6Po2fcfEVMhHS3JB6mnqmIBz
	5PfvnqGye+ZLvgWE+tSgXKjjLIUXEDodRP4DeKxG4JsCS+oKmtbVy27n4wnsAjWcg2aL
	MFSIoaCEzMjjf019nIM/U88L9CBTgM2ZD5ftEX32fY0kUnUw9qRvz7gzYV38ECFrZYIg
	Dra7cgjpyL3l8pkXLRzOXgJ0FQL8ol1WoDLHk2Iq9jnNjQHhGSieNpvsLoxYaY7AC7vG
	YvXg==
X-Gm-Message-State: AKS2vOybbWLVxt/Q7D4UIlXXR0Y/sCwVLnYfl0fQ2xaBAmlMb890iCAL
	dXUzwrvRhgRpHylDrsAqd94dNKkzbg==
X-Received: by 10.80.144.68 with SMTP id z4mr301924edz.143.1498487350374; Mon,
	26 Jun 2017 07:29:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Mon, 26 Jun 2017 07:28:39 -0700 (PDT)
In-Reply-To: <44f0509d-42e0-35ed-529f-0edf52b7671c@smart-home-technology.ch>
References: <44f0509d-42e0-35ed-529f-0edf52b7671c@smart-home-technology.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 26 Jun 2017 07:28:39 -0700
Message-ID: <CAMKF1srxWL4BOwy8_j05hf2UTSM8Z764jD--X37S36pAGg65bA@mail.gmail.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: network problems when running simple MS IoT Hub sample C application
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
X-List-Received-Date: Mon, 26 Jun 2017 14:29:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jun 25, 2017 at 11:35 PM, Jakob Hasse
<jakob.hasse@smart-home-technology.ch> wrote:
> Hello,
>
> I'm trying to  run the Mircosoft Azure IoT hub mqtt example
> (iothub_client_sample_amqp or simliar) of the C SDK on yocto
> (https://github.com/Azure/azure-iot-sdk-c).
> On my Ubuntu host machine, everything compiles and works fine, the
> application connects to the azure server and sends messages.
> In Yocto, I get errors after compiling the whole SDK with all examples, but
> the mqtt example is already there, so I assume it's correct. Furthermore, I
> could compile it using Intel's meta-iot-cloud layer and only taking the
> example application itself into my own layer.

I would suggest to fix all compile errors. If you need support please share
your compile errors here, there might be interesting for people here.

>
> Now the actual problem:
> When I run the application on the Yocto system, it establishes a tcp
> connection to the azure server, but then "stops working", until the azure
> server sends the tcp fin ack, which the the application acknowlegdes. On TCP
> dump I can see that packets were dropped by the kernel.
> The tcp problem seems to occur while the azure server is transmitting the
> certificate, if I interpret the tcpdump output correctly. But might be just
> coincidence. I checked the openssl libs requested by the application and
> they are the same on the Ubuntu host and on the Yocto embedded system.
>
> The network is also the same as on the host machine.
>
> I would be very happy for ideas about what went wrong here.

Whats the kernel version on working and non working systems. ?

>
> Best regards,
> Jakob
>
> --
> Jakob Hasse
> Software Developement
>
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66
>
> Smart Home Technology GmbH
> www.smart-home-technology.ch
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

