Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE206E00AF4; Tue, 18 Sep 2018 06:29:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.181 listed in list.dnswl.org]
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
	[209.85.208.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E863E00566
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 06:29:33 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id 203-v6so1752539ljj.13
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 06:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=W5aHY7xcUmpt8TzP2LFQWsgPTxzVI5ff21ZprLVu5Es=;
	b=MZlelhxIRjBIO1MqT8pNBZ/1fsd3+uDFKoBmYYcWbLxv5avdSkjzM9PXzpc5zKLkuM
	HekufH1PGwi4UYcfJSpYHeEVT92vNgHWFzNZR+q7Kmm/Itdzf0eHI3mx9BFODcNUvkJP
	rxcZj6MA/WE+ojXwKQD+IIRGcblQrqVDottGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=W5aHY7xcUmpt8TzP2LFQWsgPTxzVI5ff21ZprLVu5Es=;
	b=T43TQoxt9hcKqxt7oqLpIMhAV0ED3jQiJBa3aTcqE9c9AlK+5myC1hfXzHoSSNf1ix
	Zte9wd0l8COZ70BTAApRIFnq81P4b4vI9xUcjMradqhIU+dS1RSfHhrGer4cx59Avv/D
	hUXm12vy6IvIoZbT8je7IVigkyaSdW3rvUDJudSOry4/C5h+gPBuD3bBaCXpWD9249xL
	g0E0gXBkfoYAzlz4BJTW9rc6fwFo+xCUdAA6uza+ZTZZYp4j7HKQWpGtdwg/zjUpcuPf
	YqHXM9m2Ux3HbZ1ELYQ8e625NaRqoUtXka4jPMfS9p9HiN0X2gUO7WoRafn9q9f0EDPe
	KxHA==
X-Gm-Message-State: APzg51Dtq5Npwx0HrTrE0/a34k6mFq0H/KqqyQ08anH7hZN2rHmH9kpP
	sNY2KZAkZ2cHbbZjTbi16o9XhdPm2pX/L/Ak5f4WanvmgGSUVw==
X-Google-Smtp-Source: ANB0VdaWU6LvbK8zAv9eg9FGMs72Q6eOOD3luy+6dxdIXOImGfGUsS1KPMQ5iOUYvzLZCmLnyI7yjitCV8GqiwWV38M=
X-Received: by 2002:a2e:9198:: with SMTP id
	f24-v6mr17862528ljg.64.1537277372543; 
	Tue, 18 Sep 2018 06:29:32 -0700 (PDT)
MIME-Version: 1.0
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 18 Sep 2018 15:29:21 +0200
Message-ID: <CAP71WjzxZy4AXfRnMT6Jt6Tf18RfA6goy6qi9E6N5eR_AGM1eg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>, 
	openembedded-devel <openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Demos for the Yocto Project booth at ELCE in Edinburgh
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
X-List-Received-Date: Tue, 18 Sep 2018 13:29:34 -0000
Content-Type: text/plain; charset="UTF-8"

Dear all,

As usual, the Yocto Project will have a booth at the ELCE conference
in Edinburgh next month. While the booth is a great opportunity for
everyone to get a new sticker of your favorite project ;-) we are also
very excited when developers from our community get a chance to show
off the fun and cool things they build thanks to the Yocto Project!

If you want to bring any of your cool demo on the YP booth, please
send me an email so that we can plan and discuss any of the logistics!

Also, don't forget the YP Dev Day Europe, which is right after ELCE,
in Edinburgh, more information can be found here:
https://www.yoctoproject.org/yocto-project-dev-day-europe-2018/

cheers
nico

