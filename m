Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06407E00C0E; Tue, 28 Nov 2017 05:57:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1B44E00B1E
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 05:57:01 -0800 (PST)
Received: by mail-qt0-f181.google.com with SMTP id r58so578086qtc.0
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 05:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=+cgQr/H/D9jQK6yYyIx+Xsv7ieVPyR5HCRa6OF7ok+A=;
	b=XSCr8EYuCJlZyF+tMcxDVw6/o6RpajsVa2xcsp4JoLkO9oAozt9oCKvQSGHAt6VWbl
	10lXdKMcEAJ2ZmU8jqSFKVqCmxo4+sRyLuMWO8oSE8KO/sYwF/UlT4cWzHGpgZkbJJd8
	F54h/r588RL1AlOcTcDh5Fya/MH84PsccBxsMaerW+OLoh2pWlEdqhMtIbSq014v9C/R
	peFaUOONAItkeq2EfNfo+hiafpjFbV9t94w0R0+ghsZafEUPwCwN1p4yxCuYV/ayC4vX
	fDz1C541IAy8nTIxBh/2D7WNPwyWbjbYOEL7zSUjOvsabT1fh5Kr30fn+izs6T99yRJh
	CMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=+cgQr/H/D9jQK6yYyIx+Xsv7ieVPyR5HCRa6OF7ok+A=;
	b=L+IsDLcm5SR4RHdRm5LP4cmBG6yQeWGEIcpzNyef+2CAjBrSklLbCgxTQEQ7cibJHu
	bJ+LAo8LORNDWHOtM9aTVgbLgHBzeRdX1gQqttimyKWEjTMBIIT2XIpT6yzGxC0mWwzm
	1iULGGluZeV6z4aEyfsj46iq8/21Q4fybu4TEIxd7I9kT+nLom3mEZriDPoZ0WALG5yg
	6lXDO1S2i/fYbiMI+GfjQMna2QaGPnZA3M4QSAseD+M9fm0G2OxvstWVFHC7355HbxAh
	GNIhlPbTAdHHCi37rgfYKk2XZmyKqaY7DT3lhkiP83qjd8PjCd2fpCXVqUaDgn7Huu1H
	rkMw==
X-Gm-Message-State: AJaThX6Nuxbp6J2J+W6EqTfnh8LwXCwXR/zIGktUqq3A315SdunE9QI1
	/OIcbAUU12v7bHr24eU+HcMJ39HQSlpM55SZIeg4ew==
X-Google-Smtp-Source: AGs4zMZ5dVIJKr8eOqd+XMWrqO0XQ9B7gnshZFaIK+o3s9SaE+IUwY1CEt5/HHIoNzIyqBYQ5iaoUaWl92+SkPskewM=
X-Received: by 10.200.8.56 with SMTP id u53mr55115566qth.85.1511877420642;
	Tue, 28 Nov 2017 05:57:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Tue, 28 Nov 2017 05:57:00 -0800 (PST)
From: Christian Ege <k4230r6@gmail.com>
Date: Tue, 28 Nov 2017 14:57:00 +0100
Message-ID: <CAALGJZY3j17rTPo8r4iYxt6D1Gcy-5_dy79Ge7xg9=mqsDsS2g@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: How to generate SPDX Information
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
X-List-Received-Date: Tue, 28 Nov 2017 13:57:03 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

due to the fact there is a license troll who actively sue German
companies. I did some research to comply ith the need to provide the
copyright information within my YOCTO builds. My research ended up
with the spdx.class which includes support for the fossology tool. But
the current version of fossology does not support the spdx plugin used
in the spdx.class anymore [1] This plugin is not updated since 4
years. As an alternative there is the DoSOCSv2 tool [2] for which a
Patch by Lei Maohui exists which was not accepted and Lei ended up in
a separate layer called meta-spdxscanner [3].

So my specific question is, what are the recommended actions to comply
to provide copyright information with the sourcecode/binary? What is
the state of the art at the moment and how do the users of oe/yocto
solve this requirement.

Thanks in advance,
Christian

-- 
[1] https://github.com/FOSSology-SPDX/fossology-spdx
[2] https://github.com/DoSOCSv2/DoSOCSv2
[3] https://layers.openembedded.org/layerindex/branch/master/layer/meta-spdxscanner/

