Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3466E00BAA; Tue, 23 Apr 2019 15:48:30 -0700 (PDT)
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
	*      [209.85.166.178 listed in list.dnswl.org]
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F6FFE004D8
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 15:48:28 -0700 (PDT)
Received: by mail-it1-f178.google.com with SMTP id e13so3002035itk.4
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 15:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bi02/XolticNCI6xpNTOUAuuCVwrKO6n129Yee5lXh0=;
	b=VR0rlEXlWQoJ5ZJr10HSPrjg2bfafwVQzCQkwiygHuqHE9eixzya1lHjkbTeM1nx/w
	KmlOOuExVXU4z31fBwlGqxQl1N5rNXs/i7wHtaJqiNO0GlwPXFdRjot+V70xDs9JkuUR
	JCBLWv8j/iW8a7PztYa/PH3ejZpxoZ3fHav1xZCNdPunq8LuRdpHOwsB4UX/FyZFvtUd
	4FpeNugyYTHesK1kWKRLXCxi4lwI1FGjF45CpIDAyQcTWrfakEp9RgqiEcqGyc2N0X5D
	Ky51oDEuCKQas3NlRSCRYAjGKAoNu2wrpE3WSI2VmkarqZNYaO5FmVHiixiIrR0bN515
	D9wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bi02/XolticNCI6xpNTOUAuuCVwrKO6n129Yee5lXh0=;
	b=WRi5/yUPlMyXwEXpX0W0IIDiUMQH0sQB23NpQCjVE0T77BZf30gHvHbQHfQS2bs2cn
	bUVoeen+Fhc8EORZwpOlpI7ssgWEMX5g9NaI5pSWtuWGUCLRBqti/DcBsEf10Ro/B9IU
	R4HpmM61JBOfHXk37j1rUTh18YQzPtoOqU2iYkMbCb2V5Vfdmbq6B4MIbmNAZ9ARfzAA
	0oRnmqrNruvBwGgq4LfQIEkQaEWfRoYQ7/K+WGuJhc6CbnB1b3AuCEslv7eD2Riz5x+O
	2QLVxaNKB0OM/UhI6aXmjPJZaQQthlJEwBlKPcjZLuZZzdnSHVTFr0iDJm0HihzNO4fU
	eVqw==
X-Gm-Message-State: APjAAAVaiZeoRkRwr8XQGP7FLTFyMMJhLT305q1YSEpat+2ZyHX1vWUY
	ObazxDh0b2u00IkieYDUs9crDa2L2r+P/HYVEu3eWenJ
X-Google-Smtp-Source: APXvYqxI/hIZeNepDVI3b44U3x21RhzwGZrBl0s4u+vWBEll32PzPuUm4IMenr74BTW4z7EGPDk02QOuU39XMOrnNTQ=
X-Received: by 2002:a02:b088:: with SMTP id v8mr11653906jah.21.1556059707658; 
	Tue, 23 Apr 2019 15:48:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP; Tue, 23 Apr 2019 15:48:27
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Wed, 24 Apr 2019 08:48:27 +1000
Message-ID: <CAA=hcWSdDkk86YAqQ98oLippf+XtTk=WCraM8cu+W9=j-R+gLg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: WARNING message: Building library didn't pass LDFLAGS? [ldflags]
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
X-List-Received-Date: Tue, 23 Apr 2019 22:48:30 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

What is the following WARNING means, how can I fix it?

yocto-sample-1.0.0-0 do_package_qa: QA Issue: No GNU_HASH in the ELF
binary my_library, didn't pass LDFLAGS? [ldflags]

Thank you.

Kind regards,

- jupiter

