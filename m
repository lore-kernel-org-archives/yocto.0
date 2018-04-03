Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FB42E00C88; Tue,  3 Apr 2018 02:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D72DAE00857
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2018 02:15:59 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id c20so5898995ywa.2
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2018 02:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Fftz0cCYApx+aMaVMWodUQMMP4uwGL3jNTVxyckiKzc=;
	b=F/l+Cb7RXx3cmI+bdIkmX+dECcnkyTjnmfGVmZ3zpFZ5ny02T9LljWuLutywg1lp8W
	DQbqJa5evqaDrFpPt2DMU7/wcJDWnhS6JDXOoN+GATUGZin3JoXArEtQetdbqTUY5Hap
	11VGHQavy9WA/vpRXQotYwQik2DtXpLuJpW1ugIuXn1Iv0g7kj25ZXHwDTl8UV+JX05/
	RLRaFCZd0NwqFPnQ73m8jbT6aC6eW/tdyX9JPkdBg9m6RiWqeJMFn33sJ3cr8fI0/ZOq
	5yanJJ89+gKLzSQVpT6s3AwopBx5Zgx7BDcWLnwo5njrLVPXGRyH5HXiPuBjfomdJSDk
	BJNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Fftz0cCYApx+aMaVMWodUQMMP4uwGL3jNTVxyckiKzc=;
	b=uQhcNa2tQQK6guvhFcOEPUZ2Lb5Zv3SfJThCXxTaYsbIQkY3WOU+UAu3iVvovZ1e5w
	3mFUYByZS9mLdrz+ttMwUuwMOjwFCpjitoLU6dleXKbSzHAMGbebR7f3+wBUrBYyJSLh
	YMXvLwPmqsdQYXW1e5pf+GeFBVHsHN7gewzR+2tKxqBJRXUE3lq7DCkA81ixOQvizxzm
	KUrhTxG/Yke/YSYfJ1s/stvICfOZUDK3HjWY84VGq/8HI+eJjo5xMRHVjqipKOXeeEuP
	MTp5HEEcTel+XUEyfxT6HDbfmHV4dhSS/X2I0rBGx5/ENAbT5C0hSd7JM7fBwsUxJZ47
	1Jyw==
X-Gm-Message-State: AElRT7GRzktN1kqZkqbFgtr07HjBOhlTsadVDGUWYpsL9KrGbeQdklOL
	m0nCAkHCHCP7944kvT5bZ3DFSuTn+r/2TrAtNFU=
X-Google-Smtp-Source: AIpwx49YJZz8YcJYNGL2tNdA0wrKnJ5F8Ko96Olta5KVZBJwRO95HsRniqAl+fo7vebVy4wqf8dBztG05NT/Blzdi5g=
X-Received: by 10.129.152.17 with SMTP id p17mr5531373ywg.163.1522746958896;
	Tue, 03 Apr 2018 02:15:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP;
	Tue, 3 Apr 2018 02:15:58 -0700 (PDT)
In-Reply-To: <20180403002632.GA13779@linux-uys3>
References: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
	<CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
	<20180402211218.GA28631@linux-uys3>
	<CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
	<20180403002632.GA13779@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Tue, 3 Apr 2018 11:15:58 +0200
Message-ID: <CALbNGRQTjhweHiuVizz5pKmo3bC8XG3JBieNsAtnvO79YFLH+Q@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Mesa-dev] VC4 not working for me with mesa 17.3.7 - was [meta-raspberrypi] VC4 not working for me with mesa 17.3.7
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
X-List-Received-Date: Tue, 03 Apr 2018 09:16:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 3, 2018 at 2:26 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Mon 2018-04-02 @ 11:46:39 PM, Andreas M=C3=BCller wrote:
>> On Mon, Apr 2, 2018 at 11:12 PM, Trevor Woerner <twoerner@gmail.com> wro=
te:
>> > I'm re-building my rpi3-64 image to see if things are better there too=
 under
>> > vc4.
>> You'll let me know I guess...
>
> Everything's working :-) This is the first time I've seen graphics (x11)
> working with rpi3-64.
>
> mesa-demos, directfb-examples, chromium (accelerated!), qt5...
A bit too late but..

Happy Easter!

Andreas

