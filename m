Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20DA7E00872; Mon,  5 Nov 2018 02:29:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC8A2E00754
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 02:29:46 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id h19-v6so6084105iog.9
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 02:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=L5qWrmu/4/L9B/95Q8KZZA42GEICNRTKjtxZ58/xQmU=;
	b=cTqGmSoun8pxgZ9um/DSTRfl2CBJkV+uu4rMYnfPxsPNSgzXkl7HlBeH8uRnEyr9rn
	rhbNIH+L/yPiIHqw7rhKZ45kGtR0qw9cVxZUKY1rKevFIqhWQrsVtjHEYniCYbqANCIa
	WLDgZ7Cs2xvU8E3KFle8DJqxIz6qxkBP0jWXwqSCTtu2iOqdcNiKLz0tHHsU4tTExCXJ
	IPSVrL6DLrnFlr95IOJDU9FohbwqOhUcYzovcjqYCoD0Y6QjD+Fd4PfGaMqss1xLO3wU
	N0EqmMEz/xhmL8aTUUq6/yi5BnyJ9aWPVK2gLn6EnBfzaDKHgPrFHa32q7EC5mgqggq0
	74bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=L5qWrmu/4/L9B/95Q8KZZA42GEICNRTKjtxZ58/xQmU=;
	b=ATUo+4xr80ta7YvWiDoKquuIBN85/Oc27aXHa2+QSXjrtyqZ4vdMQg5Ozt507oMRAv
	+oa3Oo4MZwgCOKVVB8err+9ZspYXzTEEq+fh4njc8pCgjvhMJjyU0cTeEfSnrJBQqDPh
	NCv4d8QZqWfv9udJIFWmPjn6Ng2XAdcydm7VHZGCW6qULwKqrLfgHilIcCVcL7galpU1
	Mxw0JqdUgMSGu2G6xpq86mz7SjlR+GodcYpRRCn5CQAtzO63qBKGwL1b8RiBMFXpUSQb
	IEOV3HWOYKhYYtt3er1TtrwwTflOPABk/vCL0dhSt4iq3WjBg/qb2ZPC2/xFM6H1b0i9
	sjoA==
X-Gm-Message-State: AGRZ1gJXTX/2O9FpFO7R7VefTaWPfgmqzznuTDm2SukVTMMyad+1HVPy
	XNn91FiHSd+X2VLxQ9LR77+vykjnOFo7q4VFPuN2PL/XNls=
X-Google-Smtp-Source: AJdET5cnEpoEwjDooBSW45k67vEgFFGPMigNzPOnzUZY7hd4Fc721hChFkIEa581iXga8iQ1vvvSqLOjA3gc06mcHHc=
X-Received: by 2002:a6b:fb0a:: with SMTP id
	h10-v6mr12120206iog.270.1541413786276; 
	Mon, 05 Nov 2018 02:29:46 -0800 (PST)
MIME-Version: 1.0
References: <DM5PR15MB19135EE912E9C5A6575D0E20F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
	<CAJTo0LYbXyREwmvi7wNPSkw+_BpkYp=xTt3t__shDPJVs+s81Q@mail.gmail.com>
	<DM5PR15MB1913974E38C3467F9561DF75F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
In-Reply-To: <DM5PR15MB1913974E38C3467F9561DF75F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Nov 2018 10:29:34 +0000
Message-ID: <CAJTo0LbdyT0K6Nfo6D9O5x2Nc_sRjy-WkNSDSU3exppru+C2iQ@mail.gmail.com>
To: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Server Certificate Verification Failed
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
X-List-Received-Date: Mon, 05 Nov 2018 10:29:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 5 Nov 2018 at 10:24, Mohammad, Jamal M
<MohammadJamal.Mohiuddin@ncr.com> wrote:
> I have time correct and ca-certificates installed. This is the message I =
get when I access it over web:  https://git.yoctoproject.org/git/meta-intel
>
> This git.yoctoproject.org page can=E2=80=99t be found No webpage was foun=
d for the web address: https://git.yoctoproject.org/git/meta-intel
> HTTP ERROR 404

$ git clone https://git.yoctoproject.org/git/meta-intel
Cloning into 'meta-intel'...
remote: Counting objects: 16480, done.
remote: Compressing objects: 100% (5294/5294), done.
remote: Total 16480 (delta 9783), reused 16208 (delta 9511)
Receiving objects: 100% (16480/16480), 4.61 MiB | 397.00 KiB/s, done.
Resolving deltas: 100% (9783/9783), done.

That URL doesn't show anything useful in a browser as it's a git
repository, not a web page.
https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/ is the
human-readable cgit frontend.

Ross

