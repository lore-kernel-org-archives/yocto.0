Return-Path: <jan.vermaete@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2B87E00519; Tue, 28 Aug 2018 07:34:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jan.vermaete[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 695D9E003D9
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 07:34:27 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id l202-v6so3194954oig.7
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 07:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=G+9nh0FRAx58ZYkvKIlT5SdQ+8HBUQ1DQt+sIxqZxIQ=;
	b=cej7L5hJ24D39cl/n5PxHobnHMjmyy1vuyDQq0nqF4iqgb4sCE98YgSbdJQAi9E8c7
	CvSHwDjcej7GmCkYKOvZyYZZpqonmExOYIYNt4gwcdAi5h6rkpX+7eHx1Um/yOKY8GcA
	Zi+4+tz/I8VKKZRZcQ6IP3c3vX4MUyMJfebVb7lx8ma40M7rxbyP+ncmtAX8jo/nC+z1
	HxBQUcNlC/O6fuoEPgJScSN9jp+GDbj4NcsVBd5xK5sKX85he45eWqTNb4jcO0a0dS5y
	6gWAmCLi1NL4kNyUzsy/8URb5zAkFHpfP0ILwlf8qCnEAyd4lJvd0pixUxVfoHhGIwrw
	V4aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=G+9nh0FRAx58ZYkvKIlT5SdQ+8HBUQ1DQt+sIxqZxIQ=;
	b=pQ6dV/1pG1MzEkZDXS8ffsqaCzPwVw82zWHV6AFZpUNlxMz2iCinXlYrlqNPm7QIcc
	CQVEAFSgANIeDhY+Uft7n9n4MIzc04Al2m2zwy9kCeJiYMHpqruQNxsDCpmau8MbTceK
	89/tLuUU7JXBiQvjt63oLBg2u3Une56OMG3sbliFYetV+qeOW6KZhzTk9EVq5hQFO04N
	JpXHFCDJEDwjrD0bpxgnBNevRUUvSc5YKX0i191D3pIRePETF+xr91fEa7bXC2GeMv+8
	2NLg7N6ID6kx2qalDZI0aIMKDv4g/+UTAhXmQPKJWTa68c8yR/2mWXKbmhzN8dOHcfLb
	nKTw==
X-Gm-Message-State: APzg51Au9iU1erH/Q1ejtEnbA5XTVeAXd7meAeADcIGkgm5mFcwrgVTS
	EewMRpVzT1e1odGmAf4A3WGsRa4yS7367DLO7iA4BLdW
X-Google-Smtp-Source: ANB0VdZ/ef/gjqoJyHRrk/Ju7un81422c1pcz3MsqsnEe8QUiw9jVbdbb37MqpM3x1Er4xaKaxKP8PN0cAGizUKKE+o=
X-Received: by 2002:aca:c00b:: with SMTP id
	q11-v6mr1452293oif.330.1535466866672; 
	Tue, 28 Aug 2018 07:34:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:d1b3:0:0:0:0:0 with HTTP; Tue, 28 Aug 2018 07:34:06
	-0700 (PDT)
From: jan vermaete <jan.vermaete@gmail.com>
Date: Tue, 28 Aug 2018 16:34:06 +0200
Message-ID: <CABF_=yjbBOpjSYyObgs091fRcxTyBj0gw0SOPi4hhKS-3PxV_A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_rootfs fails at master with something about glibc-binary-localedata-...
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
X-List-Received-Date: Tue, 28 Aug 2018 14:34:28 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I need a bit of help on Yocto.

I have a perfect working project at the latest state of Sumo.
However, building the image when having all meta layers at the latest
state at master fails.

The step 'do_rootfs' gives:
--
The following packages have unmet dependencies:
 locale-base-en-gb : Depends: glibc-binary-localedata-en-gb but it is
not going to be installed
 locale-base-en-us : Depends: glibc-binary-localedata-en-us but it is
not going to be installed
E: Unmet dependencies. Try 'apt-get -f install' with no packages (or
specify a solution).
--

Could somebody point me in the correct direction?

Thanks

