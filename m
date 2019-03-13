Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9270EE00C38; Tue, 12 Mar 2019 23:56:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
	[209.85.222.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F1F9E00A54
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 23:56:24 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id s26so291938uao.9
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 23:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=GdGkxJ+KHP/VnfrJWsXHW+ahIZQ0SKnOF4ffcGl7BNE=;
	b=JEeYDJpIVoQwutFutnS3OBiHZ4bECegCzF2mCGcWNeLvv4cRCp0Pi+5xsvAgnM1fn7
	jeg7rh2ZlsZWMeUbCFqDhWkOY9b/Y8qYOOPNcqKn+5G6STOFGrIcZnPTIDIGFrmIhmph
	R4jg5RBnKEm/aNaiv5jiD9hFibSZZuRTbrtgzSmC2ODWP9/JWCd6a20JJS6+OFbLhhlk
	HLMTNv3FoaEkNfINN6ecp6ejCGhs7DOivVB9Ju8m16GxS6HIGmL2Bb82YFTcpmo8et3L
	21h/Mp0MjpJHREaIVl1E8LYBPbYDhFN76AQYWYlcyNbMZKg7zLZUN5SBXF91rUzAdSfs
	1pFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=GdGkxJ+KHP/VnfrJWsXHW+ahIZQ0SKnOF4ffcGl7BNE=;
	b=WmxGyA6OmCiwEuNG279KJmtbkrhiV9fdjhWAjzzJFZuLgRIvdZaC20ot9//9A1IDKb
	1h6IAdZakbfSYdhTH2HWYfoVJNVHKqXdmGFYBNsFJLcTVHppsM2v3ZHTJsrX+1H8QOqA
	KFO+v7eAn1ItImyYjmQopSoFddx9BwT36aGyGeq41BLxwMImRToqXP4OERG1xY/Z5N2B
	j151+1lhyM6VkVzGQvqbbMlO4aVLluUSIWnwZDRgPu/rCLTFCFreBJ3qURx91dsXo4pj
	oXLAcwzid1XZFlIuu2dfy5ytt7tpXWYkTVazed4ULXpxx/eGltdxlGC5skbD9Um+5bYU
	ZWgA==
X-Gm-Message-State: APjAAAWdYic8dNbLfrxrRSqD/iiCAMQxqQLYTskqR78ow9vwpPw0nhLN
	UUg2IxdEMbvCLdDfZ5MEwrUcQdHbSuhmZAB2GVbAS1A7a1A=
X-Google-Smtp-Source: APXvYqzY3jWgIC08MzztfnIHaoqfmXw8WvHoc36FBKwEDQeZ9/NtrcNtAklh0HBZ2KTW85CzsZ4Ie+cFuk9qf/TLTi0=
X-Received: by 2002:ab0:6556:: with SMTP id x22mr3105972uap.10.1552460183857; 
	Tue, 12 Mar 2019 23:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <000401d4d847$64e95d40$2ebc17c0$@uni-bremen.de>
In-Reply-To: <000401d4d847$64e95d40$2ebc17c0$@uni-bremen.de>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Wed, 13 Mar 2019 06:56:12 +0000
Message-ID: <CAO5Uq5TXYjN6-LL85cmbxgWmTRr6S6Dku4Wk_cRatzOvj+RSjQ@mail.gmail.com>
To: Shantanoo Desai <desai@uni-bremen.de>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [go] Any meta layers for InfluxDB, Telegraf, Kapacitor
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
X-List-Received-Date: Wed, 13 Mar 2019 06:56:25 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 11, 2019 at 8:32 PM Shantanoo Desai <desai@uni-bremen.de> wrote:
>
> Hello,
>
>
>
> I have been using InfluxDB older version on an Embedded Board through Yocto and was wondering if there is already someone on the list using the above mentioned Stacks:
>
> Telegraf, InfluxDB, Kapacitor
>

Not built from source, but using the arm binary (more work needed if
you wanted other platforms):

https://gist.github.com/akiernan/7fbc529e68c523033355e9c62edd05e9

I do have a build from source recipe, but the resulting binary doesn't
work, but I've not dug into why (and it's not important enough for me
at this point to spend the time on it).

-- 
Alex Kiernan

