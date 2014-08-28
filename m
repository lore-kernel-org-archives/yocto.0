Return-Path: <seth.boll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2A3EE007A0; Thu, 28 Aug 2014 06:39:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (seth.boll[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23570E00796
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 06:39:53 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id x13so747690wgg.29
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 06:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=b5fthWZUKgkc5QUGPjwqDkEcb2+f35o7JTrjPhxIYbs=;
	b=Xj2bUINIa93BKqmvtqbzree3JVoZAfx2biRrd8hG1O11MTz3b0xBkroPTHICwca0eo
	IP7gmYvyGTl4L7/O21q4SBMA17kF3soHamvH+Dj7THMjKCht1wbmYv80EwI8yeMmGbX9
	P6qK1Pj0VEjsY/fkv82Cv42BmAJtx5Z/F74wIabEyCkRqzvMYyRZFMIPuOb4wf9ezI+e
	aVMBLqAvx1wrqiqtQ11i3qJHmMHktitdjyyeQdRaVb2vWni5Z98PYwGToY3GCSWIDPaE
	QOMkmiXBQvggH8cEWBoEJnKQ7hd/x9aQJIF8tAj4266HBM7la4nJ8AjFGly26BE182gW
	KNrg==
MIME-Version: 1.0
X-Received: by 10.180.73.235 with SMTP id o11mr6188944wiv.41.1409233191763;
	Thu, 28 Aug 2014 06:39:51 -0700 (PDT)
Received: by 10.216.208.73 with HTTP; Thu, 28 Aug 2014 06:39:51 -0700 (PDT)
Date: Thu, 28 Aug 2014 08:39:51 -0500
Message-ID: <CA+JN8xMg9k=eax3Q6UdoUaKYeobKiyjiVk9DZC-OiPaX1GD4fw@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Multiple kernels same machine
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
X-List-Received-Date: Thu, 28 Aug 2014 13:39:56 -0000
Content-Type: multipart/alternative; boundary=f46d043d66ddcd05ee0501b0ab2b

--f46d043d66ddcd05ee0501b0ab2b
Content-Type: text/plain; charset=UTF-8

Hello All,

I'm trying to build two different kernels for the same machine.  One kernel
supports a manufacturing process, the other production kernel is meant to
run on the device after it's been manufactured.  I've manipulated the two
images I'm using to build the two kernels (the solution is _very_ ugly),
but as you can imagine, they end up stomping on each other, causing a
copious amount of warnings.

WARNING: The recipe linux-dbl-manuf is trying to install files into a
shared area when those files already exist. Those files and their manifest
location are:

 /usr/local/yocto/gateways-yocto/build/tmp/sysroots/x2e/pkgdata/runtime/kernel-module-xt-statistic
   Matched in manifest-x2e-linux-dbl.packagedata

Is there an elegant way to resolve these warnings?

Is there an example somewhere of two kernels being built for the same
machine?

Thanks,

Seth

--f46d043d66ddcd05ee0501b0ab2b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I&#39;m trying to build two =
different kernels for the same machine. =C2=A0One kernel supports a manufac=
turing process, the other production kernel is meant to run on the device a=
fter it&#39;s been manufactured. =C2=A0I&#39;ve manipulated the two images =
I&#39;m using to build the two kernels (the solution is _very_ ugly), but a=
s you can imagine, they end up stomping on each other, causing a copious am=
ount of warnings.</div>
<div><br></div><div><div>WARNING: The recipe linux-dbl-manuf is trying to i=
nstall files into a shared area when those files already exist. Those files=
 and their manifest location are:</div><div>=C2=A0 =C2=A0/usr/local/yocto/g=
ateways-yocto/build/tmp/sysroots/x2e/pkgdata/runtime/kernel-module-xt-stati=
stic</div>
<div>=C2=A0 =C2=A0Matched in manifest-x2e-linux-dbl.packagedata</div></div>=
<div><br></div><div>Is there an elegant way to resolve these warnings?</div=
><div><br></div><div>Is there an example somewhere of two kernels being bui=
lt for the same machine?</div>
<div><br></div><div>Thanks,</div><div><br></div><div>Seth</div></div>

--f46d043d66ddcd05ee0501b0ab2b--
