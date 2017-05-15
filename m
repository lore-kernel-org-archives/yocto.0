Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2B01E00B02; Mon, 15 May 2017 08:37:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B8B1E00901
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 08:37:14 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id p24so75856435ioi.0
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 08:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=SgJBTGVm5mE8W5klBn6gXMd0Us4vetLMz0eTprI4pQM=;
	b=Xrk2bjDPf7tbQsoQD0Y0PClWv/njJc1Wohc4zHACFxL3qHMmxsxLfNRPJjppSXjPmE
	9UeaUFBh5+AivKGe9T4m/YnXUUyPx3ttZMBdLEXRa+Plznd+yDEVq+ypx0hKKokjRlNM
	jOsoUjcD63PwcjuLgBqs92Hhcw7U1cjMHMa/HN8oLuLa9cR48pGeo5WMm1nJjNdDHcPN
	pujfOS3RRJtTPXorXi7rg3kQz2iJlHEplYt/JN6eJTEAeQPPFuauwt22VnA85OYkoSn3
	OWOvhE9YhAK5lTB4VLBsxVKe3Z2MXMCbxYgMNL5bCWrG7nTG7+Gy8rCBPCFtdEUOl0Kr
	ka+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=SgJBTGVm5mE8W5klBn6gXMd0Us4vetLMz0eTprI4pQM=;
	b=OBtwStEuwkQEJIATIwoE1jIR/RtpLdyTPl4V9Low0cBFlMXEMwCC/YEodlc0wK/Jsg
	M6lBRxKqI6qUGrfb2aJ0f0BAwpCNpY/Q4IOk3uRDNU4gA7vcJFfN0bquD8i6TqepHEPF
	BIgwfvO/VDuSzQqBXv5XJir29V6xDh3L9cACrwMXbae6fieR4BF/bVoz8+PlhcjM1UX3
	AAo3aoIzEXrT6OodIYVb+OxyEHZG8xs44TB2ksioTpHzwZRhS1w7aPe04DI+frNtpo8y
	53/TGQotED5UvrNa70UfJwKvp5BwPTFVx9pU/A4ADoGZ58pGV5keMb3yE4Zi8ICWpPeL
	FcSQ==
X-Gm-Message-State: AODbwcB/mgYSWX9nyuluqOZNxjJG4kVu7R9YlBALjysABQcU5F9PgCji
	z2IAgZyr8hr4oQ==
X-Received: by 10.107.186.2 with SMTP id k2mr6256393iof.39.1494862633684;
	Mon, 15 May 2017 08:37:13 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	r141sm6147162ita.2.2017.05.15.08.37.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 May 2017 08:37:12 -0700 (PDT)
Date: Mon, 15 May 2017 11:37:11 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Message-ID: <20170515153710.GA21833@linux-uys3>
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
	<1492013128-5920-3-git-send-email-ayaka@soulik.info>
	<a224eda7-602e-8d00-ad0b-305dd1b04af8@collabora.com>
MIME-Version: 1.0
In-Reply-To: <a224eda7-602e-8d00-ad0b-305dd1b04af8@collabora.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH v2 2/3] recipes-multimedia: add gstreamer rockchip support
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
X-List-Received-Date: Mon, 15 May 2017 15:37:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat 2017-05-13 @ 06:16:06 PM, Romain Perier wrote:
> > +DEFAULT_PREFERENCE = "-1"
> What is this variable ?

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-DEFAULT_PREFERENCE

