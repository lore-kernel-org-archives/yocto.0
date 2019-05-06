Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C03FE00BAA; Mon,  6 May 2019 11:20:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E815E00AD5
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 11:20:03 -0700 (PDT)
Received: by mail-it1-f169.google.com with SMTP id s3so9707747itk.1
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 11:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Rd7TGQXL5v77lMxrW+yRyFzcieNn+kMJy4dLXN8lId0=;
	b=s0jz7wRvnv+ubsLGbzO+z6HSdlSPxFGJ9EY2bpYoIaAt7qBCdrQa8O/JKbabwJu+q5
	NRd5T99mTIMdlBj2CZWPSoq/2Gq+VewHsWlVFMiWaRCjiVQxc3bYssSyv4qYnQfDMm+U
	CmDZVWqiJaCS+9zWoEFctflkS/w+BtF3Op6CDwJO0GLdgls1mSuxLUfPQlqq0Rts0XK5
	X99mIccMddM9FStbA3uTDlwgWuffTY10R6ySMc9UbFcvkbzZi9oIMyJnZYVSe2bmchx/
	khst6xGKvqCBm/yWPH4NZi9hh9Y5l6ApwcEdGOd2m0wbKxMnQ8GEuAm0awdEvkwbqnmR
	j7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Rd7TGQXL5v77lMxrW+yRyFzcieNn+kMJy4dLXN8lId0=;
	b=MDBuPerqFfk+wd9Fj6nDuLkaBYVoNE2IlI7qqikFHWViqMC5S7xgPSDFhsRoeFvyU5
	3vA0XEe/akhY+e5h2JTqSteSdP1Xrs9UFoQ++uZ/7Kn+mD1OlHv61RSMm5AwLCCfe0nd
	Uw6v2uarxdouMb3JE5TMnYMluUJkVkM63pNcJFZ33WHej80nZ0tJCkmVMmK9FPqz5SKU
	gw3jYKgzefsQ994rF0QeAawJT6Mws9iTdWJ3pIQ0WhbVo/YSqZjR2nLE0ohktmsvacH4
	rNmc0p/hU3gXlNpGyHEOX94RV/17e4+XMWM3PFAt8T+Syp40s7MMS+oXyGq4JdWWnDwf
	0aqg==
X-Gm-Message-State: APjAAAWzYYe1J2pFwliwKjJnQwBrJBd6ZhW6OITANCveI9ZUmWx2VQXc
	o5qfVuA66Ih1H09Z9JPynzryMMFh8OrWrxxQILL6GOGI
X-Google-Smtp-Source: APXvYqw8DMU/wWc7cNNjzdN5O+tQ37Lt8fkW6ZTAwSZ2lgZHp4Ji4qGOXju/l3fDAxCCyoUW72Astu9poWI6Y9xWo8o=
X-Received: by 2002:a05:660c:111:: with SMTP id
	w17mr358644itj.62.1557166802820; 
	Mon, 06 May 2019 11:20:02 -0700 (PDT)
MIME-Version: 1.0
References: <CADB9fJHnTXxW78EqNNfeoh2GHM4fqETzC_wo1U58KBRDDJ5TmA@mail.gmail.com>
In-Reply-To: <CADB9fJHnTXxW78EqNNfeoh2GHM4fqETzC_wo1U58KBRDDJ5TmA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 May 2019 19:19:51 +0100
Message-ID: <CAJTo0LaDGS9xL1MX6CiNObhtAToerSXkuPCVJo8thqfw=dKiTA@mail.gmail.com>
To: Eric Grunt <gruntblue@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: yocto sumo - upgrading gcc from 7.3 to 8.3 fails - C compiler cannot create executables
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
X-List-Received-Date: Mon, 06 May 2019 18:20:04 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 May 2019 at 17:28, Eric Grunt <gruntblue@gmail.com> wrote:
> | configure: error: C compiler cannot create executables
> | See `config.log' for more details

I suggest reading config.log for more details.

Ross

