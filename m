Return-Path: <pxmyhdev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0CAAE00BA1; Tue, 24 May 2016 07:32:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pxmyhdev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 864B2E00B5F
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 07:32:33 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id x189so17363601ywe.3
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 07:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=6/Olf31ns95XlW/Y009+8qyoVwhqIhkagPvaSNDBOGU=;
	b=FPXuRtc0HXNaDxx5c0eh7PB+6EApik2tS9MhcPL1QEb3dx+SuLJa1qP21mXeqKFouu
	oKaCHZc5NuTQgtQB0hKPcBlGVB2ASp6T38OpUFWjzR+auznvGv+5v8hErJnWlmdKvvRM
	bfdiQcgnPPNRbcdWPpygwtiYUodUEfcEXzwc+r3MC29rr7eV2K3kV+1Qf8e/WxSB6Ueu
	C05HHTdxWzPafgPxx6F6JT2o5CprfAMNpPfrS0JXHVMczAXshvkYNgpy+h6xVQs4BWpY
	cUJBxilN/+M6f6h7Xq+KhKScNwe6h6YZ+AADB2JfM2bS3zIFg3KcOTEya/U1FkBtZxcw
	UWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=6/Olf31ns95XlW/Y009+8qyoVwhqIhkagPvaSNDBOGU=;
	b=I2ebRlnsvsojfu9k/muT3+djNo0Sdg1A7Yh24EQSesPL0h92pdL1WqxSvrkMzGYGKO
	BF9/M7n4lnUcTAir7j/AYrGrWuAuWFaNKY3wqpLu1aZ7NGMVAekehPesImwe5K5PRaBe
	+jwJNkdcqFEfmybDel3j2I1KE9b5iNwbhT0xUR3LlvD+mbRyIZvOc97j3imyD4xSGqoh
	+WQYTLe1CUz4BLOoRN8aMNmR2f0CNtN4ypJdLR797lqzg5r/Zn+DxNSu+QnQSP7hAlrD
	VL3sPD8cSA1dtLKlRz6Eh0epfrKCGJ/k9MJC4T9azXEbBIhpWkT67ogzi5klB+GnB1AP
	DMkA==
X-Gm-Message-State: ALyK8tKtWcTnLSxSiUbVi1aKP6C5qqVjgvGdDc/PPiShAjGr+Hc9xFboaUY/zpY1umYnWy2ArJ4A0Us+u7DhAQ==
MIME-Version: 1.0
X-Received: by 10.37.74.202 with SMTP id x193mr2658987yba.24.1464100352561;
	Tue, 24 May 2016 07:32:32 -0700 (PDT)
Received: by 10.37.111.8 with HTTP; Tue, 24 May 2016 07:32:32 -0700 (PDT)
Date: Tue, 24 May 2016 10:32:32 -0400
Message-ID: <CAPYQ8X7m6OyFjQ+5VLRZtfMnSMufM=irU_SCKa4ydjoFPGvkFw@mail.gmail.com>
From: Michael Hu <pxmyhdev@gmail.com>
To: yocto@yoctoproject.org
Subject: Retrieve SRCREV variable value outside of a specific recipe (not modifying it)
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
X-List-Received-Date: Tue, 24 May 2016 14:32:36 -0000
Content-Type: multipart/alternative; boundary=001a113e66006e25790533976d38

--001a113e66006e25790533976d38
Content-Type: text/plain; charset=UTF-8

Hi,

My goal is to pull recipe's SRCREV variable into a top level *.bbclass
file. I understand we can use SRCREV_pn-<recipe_name> to modify the
revision on the fly outside of recipe in configuration files but when I
print out SRCREV information using ${SRCREV_pn-recipename} all I got back
is the recipe name instead of SREREV value for that specific recipe.

Is there a way to retrieve SREREV value outside of recipe?

Thanks,
Michael

--001a113e66006e25790533976d38
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>My goal is to pull recipe&#39;s SRC=
REV variable into a top level *.bbclass file. I understand we can use SRCRE=
V_pn-&lt;recipe_name&gt; to modify the revision on the fly outside of recip=
e in configuration files but when I print out SRCREV information using ${SR=
CREV_pn-recipename} all I got back is the recipe name instead of SREREV val=
ue for that specific recipe.</div><div><br></div><div>Is there a way to ret=
rieve SREREV value outside of recipe?</div><div><br></div><div>Thanks,</div=
><div>Michael</div></div>

--001a113e66006e25790533976d38--
