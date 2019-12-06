Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5882.1575648623944712521
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 08:10:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=H77XQkwz;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 140.211.169.56, mailfrom: jdmason@kudzu.us)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1284E01157; Fri,  6 Dec 2019 08:10:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73F5FE00B7A
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2019 08:10:22 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id b6so8406815wrq.0
        for <yocto@yoctoproject.org>; Fri, 06 Dec 2019 08:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=MFB0taAlSkRDCeSxOAK7yjV1QxH96CVr2KWPeXEWOkc=;
        b=H77XQkwzisOBbwyM3zRfmZjjByR8AHvyBVlLg2EQTOVcVYB7xwX4PKFzrAVNQFe7hD
         fTqOfVGcIVSx0JWNYhgKiKj8o+Kzy+lDkAgIJxky2/OAPVTJVDtLs3mcXIgyNu3OXizk
         zeuQUA4cbBAFTPdNK7rVSVb4N3HvLwKQxpFCCgTE2M6Wqai7eJYbvm+9soU4AqwzRimT
         xYjLfYS0nIWMMKXIZZ1F+d5fCaAJZWDkMbdZnJOm2qMesOW2Op3HSVb4K7A8fa1NvXb9
         RztqneWWl/SsV9G3bcmJF34HYlFdRVii3nGQT7rQcBanWtlsRvvD3ZMzDC3nSGRsyzSc
         IRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MFB0taAlSkRDCeSxOAK7yjV1QxH96CVr2KWPeXEWOkc=;
        b=OHU3Oktwu7iCzRdMRcyWauMXqKSsME7P6A+whXqi57GyZVSWh242otzlYyEi/QRjan
         cvcnELhBSAIM+uSfwiVD/gBuEbX+hJBQpBJoUXkMPr2yrsb2TYQUEsoOBTnKUFvPpVLp
         db78+ysF4hOzMxURTH3U9uu1hyGNq6XQs2gV58wmskCvs/+fGJrTcqhEOVf8Q5F8zLTU
         JQo6ARFnG6i5/rN9qVJGSMP2L7voGFOB1IHn2xaH7CtejAVIiH2ONLaU/lY3cnFbV0d/
         NMW/i0smNiJmz3DybgsInu38J93wt28zdVsjyxKDLoV9BYwzI0rQsZgvQFIvk2TtWUL2
         JR5w==
X-Gm-Message-State: APjAAAWt9sxiZVenAQYt2aum6OCM3W23RFvQamRv1PtzAHcxG2oqmm0C
	cpFT/XjbVweeYx6NZj+nAXeEkVDEs8OOS9MKVyDmQkM/uzs=
X-Google-Smtp-Source: APXvYqyKTrY7FL4SpCxSo93oXHcO06KJZ3QB1FlNZ28SiZu7Jxbiy2ldACl7K32vSi7e7K2Cp1ck2lyD0KtJ5gPoHgc=
X-Received: by 2002:a5d:68cf:: with SMTP id p15mr16664925wrw.31.1575648621395;
 Fri, 06 Dec 2019 08:10:21 -0800 (PST)
MIME-Version: 1.0
From: "Jon Mason" <jdmason@kudzu.us>
Date: Fri, 6 Dec 2019 11:10:10 -0500
Message-ID: <CAPoiz9ysfd7NogxVWL1ZYHGESDdpcHkCp5koMKOUfzK=rSOR=Q@mail.gmail.com>
Subject: OpenEmbedded Workshop at FOSDEM20 tickets
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

We are happy to inform everyone that tickets to the inaugural
OpenEmbedded Workshop are now on sale.  Early bird tickets are
available for 1/3rd off regular price.  Also, we are offering a
"Supporter Ticket".  This is for those who are able to contribute more
to help support OpenEmbedded, and/or would like to see more events
similar to this in the future.
Both of these can be purchased at
https://pretix.eu/OpenEmbedded/oe-workshop-2020/

Get your tickets now, as we expect these to sellout quickly.  Also,
early bird pricing ends on December 31st.

Finally, there are still a few slots open for Speakers.  If you have a
talk you would like to give, go to
https://pretalx.com/oe-workshop-2020/cfp
CFP deadline is December 15th.

More information on the OpenEmbedded Workshop can be found at
https://pretalx.com/oe-workshop-2020/

Thank you,
The OpenEmbedded Board
