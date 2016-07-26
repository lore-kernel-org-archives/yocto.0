Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45B25E00D50; Mon, 25 Jul 2016 23:18:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C1CDE00D44
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 23:18:24 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id f65so160022119wmi.0
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 23:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GDGsR7QsKZrTjLufVATiS+YJliqi+72Lwn4M55/6Ee8=;
	b=Nxc4TcDvvJeW7uiZS+I371U2HSIxZk1dDyahW384gRPjTkG5fwOiL6g2MP1kA5Lpqa
	fOAwTrlCfrEEofzjSoJSWYOEWBhXbFF2/j3zq4qNH8CXG9lM4gCbkPAqW9tCMyfT49On
	KLXeSlHJEMvyNi5zo132xmmFNqmjxGgqNxJZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GDGsR7QsKZrTjLufVATiS+YJliqi+72Lwn4M55/6Ee8=;
	b=bL0u/gGBxJciwM3riKxMdwNNZRDxvB2gLuBmzMQVUPszxwObKNlU28XccOzoTHuHmu
	87x7mQPsRrkuRFLplrMA0JsKp7a9iwpmrsxRU1BxrTm2u5jLMQMASHoH/lNrXhYuPzbu
	d8E8kPX9yt+K3Snb39R/zbEm76ffsJ4FlE8Z+TsAxdJ3RJsnfSwEScdOSd70OeXs9YtI
	uyQo8BVRlWRJ9/jp7UJ1vP5AVP1ng/qU/ppRi5j7ivYr5L/kq7EcqxZnw3Vi+ffMIwxI
	bvmswG1l0zkK1JFNCx14X8i/Qt0/ZwhoJYiV5yqHTbNDdhUmJdJIB2Bn8c+E+YsNXvYv
	SuDA==
X-Gm-Message-State: AEkoouuED0hZjgYIteVPJtXNU55TrWnaw+0X0uyznn0D2/cZhkNXzFUdk+jem+LVQCALRjUsoYqmrNI7wlt43v1J
X-Received: by 10.194.73.136 with SMTP id l8mr18484462wjv.153.1469513903546;
	Mon, 25 Jul 2016 23:18:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.163.225 with HTTP; Mon, 25 Jul 2016 23:18:04 -0700 (PDT)
In-Reply-To: <CAJ5vXcRgkgH8by89cv9Hi_g=Vo18kXAENCwy2zUNb00UTaat1w@mail.gmail.com>
References: <CAJ5vXcRgkgH8by89cv9Hi_g=Vo18kXAENCwy2zUNb00UTaat1w@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 26 Jul 2016 10:18:04 +0400
Message-ID: <CAP71WjyoSY=4TqsgU+vggqGMYRiXxDcdeHrNXEpEvgoXYc1zbw@mail.gmail.com>
To: nousi <bnousilal@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: config file
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
X-List-Received-Date: Tue, 26 Jul 2016 06:18:27 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 26, 2016 at 9:55 AM, nousi <bnousilal@gmail.com> wrote:
> I have downloaded the poky repo and it is clean.
> I do not find any .config file in poky directory.
> Please, point me to the location under poky tree to copy the .config file
> from the external source so that bitbake can use .config file configuration.

there is no such .config file used/needed/required by bitbake. the
main configuration file which is loaded automatically by bitbake is
conf/bitbake.conf and it's in the 'meta' folder.

