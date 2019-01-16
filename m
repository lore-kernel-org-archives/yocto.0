Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4EC4E00C49; Wed, 16 Jan 2019 00:47:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gmshastri[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
	[209.85.222.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 399C6E00C28
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 00:47:19 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id n7so1892687uao.7
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 00:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:from:date:message-id:subject:to;
	bh=VFT2B1Q7vgB3Gde+1CMb1olsXx5OT8J2BHzk5pKZYX4=;
	b=L6yXq6+jgD7Cml1BornyXnUsOE3U00XfF4q1e9zI2wcLU1yE2RZFU6/aM+zTlZHjND
	Rt9J8RDY+p0GOe4oOUB7aIzD0uEmhHg50Vx6mlXsD8KMRjkLR6qHMUaUUk+OdGu+jDif
	TqpoS2vU8F6gY/KvtoIZkQqOz3FoMwiHw6UyZrO6Z7QJyoMlvvYgPSnwQW2g0Z/vI2UK
	wf7vLizINpex9MpbsQzvJ/C2/yOxT2y3qNr8TZOTI8GDAE6Mv8HtP6uOM6S9LrvKwFhp
	VYsEEbiSDq85xGpAfggMnPOj6rEbLrFAHTVKqpjtAx7DcX60aYsIpz1eAzTM2aS5XmWJ
	Hm6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:from:date:message-id
	:subject:to;
	bh=VFT2B1Q7vgB3Gde+1CMb1olsXx5OT8J2BHzk5pKZYX4=;
	b=T057ZfZdfZ4mLwVaZj9dZxCK0TefRKCjlf74jmqIjphrn6oWEZMP4B8I/M7ekFPphb
	cKo+sxtZvXzJZIr3CfdbXoGvUKmwiwvz3mw0aw+1kvVtNVbm34jiPZn8uU9Bb0EtOMA4
	9/S6KTxuirqf0IhhsDZc56GqWh/omLAMXqprPi7XSkgPcQJR/EhoUY4n6CpHDwuOIKej
	9w4T0rPG+dRO4UlRnVQF7T6YNSecaXS59c1zPUtxuiTt078GS+evP+ZwwsSTj1fUTl3D
	wBtFl2UoX6ApMT7bpO4F+mscknss80GyZfvrob5DzzW9mzDhYt4mtVy8GqsekFOj+YYU
	YwVQ==
X-Gm-Message-State: AJcUukdQCGDXPqGR8Q0/62jQxNao0ITttofwDKyeso+s6c7sBCjiVBNJ
	pTHhDDmmIXis0UHTZOnboqwqb+JHZgNDQwQ7E3dp19ca
X-Google-Smtp-Source: ALg8bN4g0UfDZj5Fa6hkMlqTr/a9mLjb8Oq6uLsX5GuNTUqmZBGZbDxNOEYH7R/cBz915qGWdq60d4VBJ303k3nT2yw=
X-Received: by 2002:ab0:73c4:: with SMTP id m4mr3412461uaq.101.1547628438354; 
	Wed, 16 Jan 2019 00:47:18 -0800 (PST)
MIME-Version: 1.0
References: <CAE_REAuoUGr7L-Cc5_f38wy-Myq1g69D_97wA_cfEu=ULUyAQA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
Date: Wed, 16 Jan 2019 09:47:06 +0100
Message-ID: <CAE_REAt2p+C+CRSCj=yfRBw4TEkswUP7uTpue8NLu3Gqzgn5xg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Community support for any Yocto release
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
X-List-Received-Date: Wed, 16 Jan 2019 08:47:21 -0000
Content-Type: multipart/alternative; boundary="0000000000004ffdbb057f8f53f9"

--0000000000004ffdbb057f8f53f9
Content-Type: text/plain; charset="UTF-8"

Hi All,

For how many years yocto community officially support any Yocto release?
(This includes like bug fixes, CVE fixes, enhancements, etc etc)

For example, the latest release happened on 11/15/2018 (Yocto 2.6), so how
long this will be supported by community?

Sorry, if this information is already present on some wiki page, but I am
not able to find it. So pointer to that wiki page will really help.

Regards,
Gaurang Shastri

--0000000000004ffdbb057f8f53f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr"><div><div>=
<div><div><div>Hi All,<br><br></div>For how many years yocto community offi=
cially support any Yocto release? (This includes like bug fixes, CVE fixes,=
 enhancements, etc etc)<br><br></div>For example, the latest release happen=
ed on 11/15/2018 (Yocto 2.6), so how long this will be supported by communi=
ty?<br><br></div>Sorry, if this information is already present on some wiki=
 page, but I am not able to find it. So pointer to that wiki page will real=
ly help.<br><br></div>Regards,<br></div>Gaurang Shastri<br></div></div></di=
v>

--0000000000004ffdbb057f8f53f9--
