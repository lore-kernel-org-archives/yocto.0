Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19A2CE00C38; Sun, 13 Jan 2019 22:34:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (edwingate8[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E0FE00B58
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 22:34:32 -0800 (PST)
Received: by mail-it1-f176.google.com with SMTP id w18so11519065ite.1
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 22:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=7IxERZCgImyvwKyVYZRzr5sVXgNmlImIDQnHy5ajUEU=;
	b=CSVLvz4iHr0EPfh79+QTRcsWPmBGGdVpDjfnoXzwQ3Rg7ROh29enJAssDsv2BvlGVF
	VpGG7K2BfEG3+Sa6a3XTFqs2O022KJL5s2rbIn3UqUikGUY/kZJ+oUG9hNzvbkUppC6V
	7hFVcU9mReebEm2ox0YogrBPn1uELZ/Dqckhf8JVyNnqrtX9oQcN3W2r9iEg3rUg8qag
	IgVaC4Cld9bI2cF05G/IDzYDytoh1BcCC2Yrdw+Tk5h0ZjZX8olaqRF1aqI4/gQNu6OH
	yFY13nAzNR9BDsBd1zDtvARPAX5laZGL1hKofW72XJw3//33fkDKvaTIIWX4epLoYfrx
	uo7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7IxERZCgImyvwKyVYZRzr5sVXgNmlImIDQnHy5ajUEU=;
	b=f0jBkdm+hiuZT1OJEUQqJLrvbgCH8PkLJSRhNdg4d/0uGoi07tJSv2MCtSzJrT1AFR
	8UqJRJ+yyjJdd24tYQXxgm1P0GIz9qS7ah0exC5HPJsaYf1cQWMpMffXVL+AbGz9Ooqi
	hVbKxINZJJQWWUkDwHTGKA2RAT7Rv4prcTe3sBvhzb2ZmR1Tdw9ljHxtDcCxDhZcqzwi
	Ng1qOdjOXcf6ALJ1TQ5HL7XLpUKImZVdlh2VT4zJd41y3yWJExKuTYRNqVPQ53yqMbB1
	u+tIeGJR3jt2Iqt/ADNYRCKxZuj0lPSR90+2gZWaHOlmScfjN68l+U3zTQSN+jK+bw/Y
	XgTQ==
X-Gm-Message-State: AJcUukewQzTyclR9LGVN82hiI7nvii6ZBpZnoGpmMevX5dSjoKVXLhmz
	ZlY2X7rPXvZ0KDNeLvrChIf42RNYe6o5dVZFEm49Dw==
X-Google-Smtp-Source: ALg8bN6gQBCp0HCz+DqFsfonOAw57/cmpKq5EOWgEQJr9kHEKjj4PBx/F+zXKjmBIThwp8lvxHu+zBD713F5q437Y0Q=
X-Received: by 2002:a24:1f0d:: with SMTP id d13mr6833479itd.140.1547447672099; 
	Sun, 13 Jan 2019 22:34:32 -0800 (PST)
MIME-Version: 1.0
From: Edward Wingate <edwingate8@gmail.com>
Date: Sun, 13 Jan 2019 22:34:22 -0800
Message-ID: <CAGMdoFn0jYK+nvkN34eePa2XAeRDRS8gUJCZUepeLm-+DK5d9A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto distribution license
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
X-List-Received-Date: Mon, 14 Jan 2019 06:34:33 -0000
Content-Type: text/plain; charset="UTF-8"

I understand that a Linux distribution created with Yocto is composed
of various packages, each with their own license, and the obligations
of the licenses must be met.  But are there any
restrictions/obligations on the distribution itself when created with
Yocto? Or is the license of a Linux distribution created by Yocto
determined by whoever created it?

