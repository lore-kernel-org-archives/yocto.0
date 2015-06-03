Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 971A9E0095D; Wed,  3 Jun 2015 15:35:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1943E007B6
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 15:35:00 -0700 (PDT)
Received: by iecwk5 with SMTP id wk5so23519515iec.1
	for <yocto@yoctoproject.org>; Wed, 03 Jun 2015 15:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=P5vFcCV6eAkueLBfJCZ/bqZcY8JfJBB3DICR+L59xic=;
	b=D1sIoXBLjOCcBt/h/5/8rGy2clwlYXil7RGVuFmWKIKvfqztbCYwtTMAr/OvAnOpHK
	zL0JvsoSUxgypWGTmci1z7WtQUNUZICcAPeGmfSbE7FXL31tWqsi4JWUhUas2cJKuG9I
	GWP+E6QXPAs2nLr6g3dWu4RkFuiGErhIMBxzRm9aVy2ewOcV8LBJFf9v5XaQs/YLmujQ
	Kaq369LbYHhCryyUDek4koV8IVgPFXHuRmYkMtWRjYlgqsA0Ltq/FmqMlRe3gdElUfXn
	b3rMnE3kURsuVckdaeioHqK8f+XXsOYImbMXkaqsp03s4qiTNHogS9XK+7jaNr/QHqpm
	Hsbw==
X-Received: by 10.50.176.228 with SMTP id cl4mr1337053igc.2.1433370899559;
	Wed, 03 Jun 2015 15:34:59 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	z195sm108129iod.33.2015.06.03.15.34.58 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jun 2015 15:34:58 -0700 (PDT)
Message-ID: <556F8111.2030201@gmail.com>
Date: Wed, 03 Jun 2015 18:34:57 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: layerindex
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
X-List-Received-Date: Wed, 03 Jun 2015 22:35:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

Does the layer index provide a REST api?

-or-

Would (could) it be possible to somehow grab/access the data that drives
the layer index (preferably without scraping)?

Best regards,
    Trevor

