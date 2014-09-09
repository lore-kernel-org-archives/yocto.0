Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64559E007A2; Tue,  9 Sep 2014 02:43:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.45 listed in list.dnswl.org]
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC7A0E00781
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 02:43:32 -0700 (PDT)
Received: by mail-qa0-f45.google.com with SMTP id s7so108600qap.32
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 02:43:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=gamcQOUo0ZjcutkqPc2j9U53twhlG3YsX+ku82Ibf0I=;
	b=CCUoEf95RIHDmADgHpNG3TAWg+wbR2hKyxRhWiun/yZIDAM+PGi3vJDN/waGAPUcfc
	yCu46giaOmy429dDwdzi4lP/ay9pMGmyvGNA6Nwrw7eXRp09sCR1yBasPgEXZwZsxxjZ
	YmhUCILaPVjZztZfKLC3ejJbk8MxVrKRVQjc7kLdgOlrbYw9kEHktGuGcmPxzWi+/qX7
	jxQ+UGX+uc2J82vK6+5qpTJMzBE7T57tNbEvzzNQcg063qYUZX0AFHQKYMV5c0yq/3z5
	UigJEuw38jHtkcUcL0IDfGSVadF0dKog4K5vPHI2H/zHhYfksyBuNrDieOzvO01CkdCX
	Urmg==
X-Gm-Message-State: ALoCoQkxF0pmdF45w81DzL4P9tSV8qGRRxCPBBl2IVZzXAu7u7OhCPbnd8pasdcM0Qx3b9yR4YWW
X-Received: by 10.140.105.138 with SMTP id c10mr47691025qgf.15.1410255812046; 
	Tue, 09 Sep 2014 02:43:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Tue, 9 Sep 2014 02:43:11 -0700 (PDT)
In-Reply-To: <CAMSG=xUsOJqQLABzm-W2Stwc5xdGTP1pGKMA7Z4TiS5ftLtx1A@mail.gmail.com>
References: <CAMSG=xUsOJqQLABzm-W2Stwc5xdGTP1pGKMA7Z4TiS5ftLtx1A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Sep 2014 10:43:11 +0100
Message-ID: <CAJTo0Lat0QQw1RQzGGxpuyH1Uwo_x9b2WmVnYgs8httK2D=23A@mail.gmail.com>
To: Nemicolopterus Crypticus <ncrypticus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ExpansionError during parsing
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
X-List-Received-Date: Tue, 09 Sep 2014 09:43:38 -0000
Content-Type: text/plain; charset=UTF-8

On 9 September 2014 01:22, Nemicolopterus Crypticus
<ncrypticus@gmail.com> wrote:
> do_install_prepend(){
>      bb.build.exec_func('do_change_dir', d)
> }
>
> do_change_dir(){
>      cd <a directory>
>  }

do_install is a shell function, so bitbake is parsing your python code as shell.

You want to do this:

do_install_prepend() {
  cd <somewhere>
}

If you need to do this though, have a look to see if setting S or B is
sufficient.

Ross

