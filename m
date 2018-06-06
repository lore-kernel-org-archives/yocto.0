Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46727E013C1; Wed,  6 Jun 2018 02:35:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D09CAE01074
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 02:35:52 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id h5-v6so5605812qtm.13
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2018 02:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JNt6+uvDrlVQ8fe/IJXXU7C33wDRkwcQLNXVDFzgJZs=;
	b=L7cCsqsBoL8xa7WEMsZBdRzZD3Qs+Ozm6TpmpiNjv1EObTsNUp9ixbscVi0dm1m8Wp
	P2PaL/8jdQz8kHpgzwZrES76RNYLoCd87GJSr8MER7GyfXzB/4igrf+DEWO7LtwJ8F8v
	1EnRUTJPqn7Tsb1ryJx8ZTtZeje9tPdPYv+HSZ7hC2UPea5JDt14kYbgORiWSYq6pk/C
	JXqLwJhfSvmiCKlKBJAgFuYAfyurhz6pUyjFeEeCaqnNgFUxjvoeqSKV5il32e5o5fsP
	yU3PrP/DHSOCeqKYo6IHXRWSoRtixO33vLIXTAwHaLxRdvSWmwKB2IS+cFZJkF3R6MlZ
	7C2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JNt6+uvDrlVQ8fe/IJXXU7C33wDRkwcQLNXVDFzgJZs=;
	b=lhCQimBsO/nQ1iuRfi9m5B6TTsySHWB8zTxkrAnRDqAUsP51ojz8u5lgd6fblgHpJc
	Pt2keoQYWW2CfjQgdqzwKqtVyjqzsrjP2dcqfXeZBhEXR65PApAzDbdVqC75vPat9Or6
	9kq+O0XBjq90+rBrLJYTb5CtN7JO4ug6vwuMsp1JUZCTTPAUJue14QNn+ds2yvQuWTu8
	9thnl4qDhFC6eZSVbefu08bR1ivn4P3hv0L3aaVg3HX6fNNsxEUWrNmUXxv1hiPJ4cJd
	xO65m+rCOmlL+Na3i6Kzd/ZuY56bBJF4oIxtOG2vzJiqEoRbvjy+HZ8bEkSGg5S5BCwb
	viqA==
X-Gm-Message-State: APt69E2eA8bj/Z5Ln9k2BM4UYbd4lYWEVFDz4l5T/TSjgg4mnCHMEJdr
	xqvWAXv5cM1pGihk4mm4E9RGV/uLuHrRuMctS7k=
X-Google-Smtp-Source: ADUXVKLNeOrRsn494/Q+eWuBrrU2eCQHxqKyuBpEkfLZLXxiM9o22IaO3nUYyQ/yahgz2YKVs1PDse/V+dN/nEUu6kk=
X-Received: by 2002:ac8:2429:: with SMTP id
	c38-v6mr1978016qtc.122.1528277752021; 
	Wed, 06 Jun 2018 02:35:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad44:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 02:35:51 -0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 6 Jun 2018 11:35:51 +0200
Message-ID: <CAGAf8LybGizfPXzhNyqY4BdJ2rxWiMs2n+EDuam_n6n_6XPrdg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: YOCTO kernel PF_CAN feature set and socketCAN layer of the shelf?
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
X-List-Received-Date: Wed, 06 Jun 2018 09:35:54 -0000
Content-Type: text/plain; charset="UTF-8"

Hello to YOCTO community,

I am looking into the new CAN FD (CAN Flexible Data rate) protocol. It
is very similar to classical CAN.

I am wondering the following (I'll ask very basic questions, just to
see if I am on the right tracks):
[1] Do YOCTO kernels have CAN drivers left as mandatory drivers in the
drivers/ tree (CAN drivers exist on kernel.org kernels)?
[2] If YES, are these drivers enabled by default, or I need to enable
them? Anybody to quickly refresh me how to manipulate make menuconfig
in YOCTO tree?

I also need the feature called: SocketCAN. The following questions arise:
[3] Do we have in the socket I/Fs added PF_CAN protocol family handling?
     https://en.wikipedia.org/wiki/SocketCAN
[4] Does added SocketCAN layer exist, which covers this topic? It'll
be layer on the top of the YOCTO-BSP layer, my best guess. Any
examples, using such a layer? Or any Open Source example(s) of such a
layer?

Thank you,
Zoran

