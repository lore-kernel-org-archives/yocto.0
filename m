Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B4BE00739
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 12:50:22 -0700 (PDT)
Received: by eekb45 with SMTP id b45so145311eek.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 12:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=wjZiGnTDnOznKXiDt8xOxzFAhx7vKB69ZtguFhxU3uY=;
	b=XFZLT6ndnA0tX3mZMo8WSF+BZOQVkViEWvZGQPs9cMmVsVM1ZVYhG/bOVgUrevKzsh
	lMDXy3DKPebxBKRtzpdqSs67u2s+jA55FszGjg8+ujSsNOzNuJluwhgRcmJvCdzpX7cE
	BO5IydxMfy2PTTsXUZkmM44NgH3UydX4CmiLj8QJfk76e8tK7XxvEyZQ+vcIhZfqMEiO
	90q4ZPjCz3/sbYI8OG3oPUITFbqWl0wa9toPs+VccP7JP7pJ+Qv9O1Klc0gPGWKMSKq9
	m9JF837+F2F6+zQHuNE0bLVyTYBwHFEZiPnqR8Re5fg4efsQ994nltmwM4Ig+i0E0YRX
	QoWg==
Received: by 10.14.185.137 with SMTP id u9mr3654076eem.220.1340740221117; Tue,
	26 Jun 2012 12:50:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Tue, 26 Jun 2012 12:49:50 -0700 (PDT)
In-Reply-To: <CAE9DZURiOqQg+djPTxz4S9h=uRrmYoce9uGrN1QjzG1ccsoFNQ@mail.gmail.com>
References: <CAE9DZURiOqQg+djPTxz4S9h=uRrmYoce9uGrN1QjzG1ccsoFNQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 26 Jun 2012 12:49:50 -0700
Message-ID: <CAMKF1sra7GZWPwVFCAWeEOo1pFz4v8K-68+mnLh1AY8DxwVfSQ@mail.gmail.com>
To: Dallas Clement <dallas.a.clement@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to clean
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jun 2012 19:50:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 26, 2012 at 12:21 PM, Dallas Clement
<dallas.a.clement@gmail.com> wrote:
>
>
> can clean the kernel or an individual package. =C2=A0I want to clean ever=
ything.

by default DL_DIR lives outside TMPDIR so you can delete the TMPDIR

