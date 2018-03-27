Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39F96E00942; Tue, 27 Mar 2018 09:50:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AB11E007F2
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 09:50:15 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id m83so58211ioi.8
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 09:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ORHyLvRD5Ws8CwpHdfo1fhKjaPMfcTV7ci7XGPPyy54=;
	b=WMqzg+6yfzdYzeThpQh2KLgpPwUkCae+fk/1dgiz3iS2MG7wKycLgW2fq6AZ54L87W
	Wuny7YN50x1itAdjOLNoR/n2oVG5IoS1xe2ndrTuQIin16xThoun2KcSiPWt3yUfDSmK
	pSLgM++nmEOSqtHgVw4rdW0sKU163Et909G0ttDd9MPw2COIeuMg847oAVKGFd1JzfHQ
	3MnIgV9ABeaPvPgEokgy6lbZB6RU1JRa2xvBgFkLGOjwPTf1dIcMEQLtitt+NOdjW3gD
	t1MZHSfHlxCs0kv8nz9unUGvKLMBFQxmb57T48yOZjLKpSVrcYLH96hNuYYxRmCAJoPQ
	X9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ORHyLvRD5Ws8CwpHdfo1fhKjaPMfcTV7ci7XGPPyy54=;
	b=Agswm1uFfAMoDMPNTM2twbVJnAcGJ30lJuVugUQLDHFN2e9xxl+YxxUxTTs5e4SpqP
	UXk4D8wviMDYEivKEVpJ3rw7MN2RhOlI7TJILgcf9rV49yIMrikYGqU/26ILRl9peTEQ
	SrHAXe2K/FD0fTDcRm52WOwqxnfApiIkoFF2rM0czZC8KyvktnTib07jBxiwa0j0dZKl
	VWj6hvMVSio8MbhDZRzMSMM6JtinJZkYC5fhLDYTGhSC5QSwycmz6hZ0w9xjjTEoSC3S
	WCeinnh+mpteHVeoBwRqZwKSlgl0+Gh8wMuKc1FNwzhLunNaD/ChozbGqHt4zYTluue2
	GFcg==
X-Gm-Message-State: AElRT7F5Sx+2hlHlFaoR0CQQlPUjUWRMJ108Xp45/nPan0PCHnB2TScX
	Py8TS3eDKZw4oSW0Ii7VmHuvHc/gQOrnrzsBlgu0KQ==
X-Google-Smtp-Source: AIpwx49VvOr9pC6IOtwGwRbyG3I4igaWdD7QVbX2QSVMyJV4BnK6aRzfG8a/wYq6VYgox2L2eW7oWh4h4BQl26QC/iY=
X-Received: by 10.107.30.135 with SMTP id e129mr19289999ioe.183.1522169415226; 
	Tue, 27 Mar 2018 09:50:15 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 27 Mar 2018 16:50:04 +0000
Message-ID: <CAFzUWGkcThCWgeEFxYtPzo=DfZB+5QOvOFxnOwZfqrVs6zUkZQ@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: python-fcntl missing in rocko?
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
X-List-Received-Date: Tue, 27 Mar 2018 16:50:17 -0000
Content-Type: multipart/alternative; boundary="001a1140f5d2485a80056867af97"

--001a1140f5d2485a80056867af97
Content-Type: text/plain; charset="UTF-8"

Hi all,

When I switched from pyro to rocko, using `python-core` -- I'm noticing
that the fcntl module in python2 is missing. Is there a recipe to add to
get it back?

Thanks,

Giordon
-- 
Giordon Stark

--001a1140f5d2485a80056867af97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>When I switched from pyro to ro=
cko, using `python-core` -- I&#39;m noticing that the fcntl module in pytho=
n2 is missing. Is there a recipe to add to get it back?</div><div><br></div=
><div>Thanks,</div><div><br></div><div>Giordon</div></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr">Giordon Stark</div></div>

--001a1140f5d2485a80056867af97--
