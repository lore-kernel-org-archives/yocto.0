Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C8EFE00C62; Tue, 26 Sep 2017 07:48:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02312E00C1A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 07:48:43 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id l188so5650243pfc.6
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 07:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:subject:organization:to:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=44pNk84rQu2I8SSQ+uxvwyFEXkShBMksoTDaROGSWds=;
	b=BnASmh+E0+/6RtcTzqogJ84St6IcZWnzIYIZdzYpmdNkPkgs0wwlzNywL9aVah1gmc
	sS7q9dEMAZY+YLuCDJ1zFbFzjLDx87W0/JKQUfg3+lFgJSao7ynUa7wGX1spJBCJ58i9
	FJNXzz2m7bZnpCJ2KTl4V30puzlavinOamTD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:organization:to:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=44pNk84rQu2I8SSQ+uxvwyFEXkShBMksoTDaROGSWds=;
	b=uWBwCBKAL4TqjUPYNa3qH8onYrOB+QPstHaGCy72VHYqem/CDXHXcH4y9UDQ+VOi4g
	+T8sWt7Xe/xC3JB8d+3H6iBmaJx42H/jsKeTB7wAxB88ULlQebeiRMZ+9jTzm6K+pTWq
	V2+cVUfKGhv1s41yGOO90zNyyRSQqsEF3eFU+B5gQycZjIKW0lNuhnmT6WBmg5qhzKIJ
	PpPvfzZ56/sWewy/335ZysrGhcVqa9bvq8qw+5h8dMQx+Fax8D/QQwCI5IQtQXB0uDbF
	Ka4tdbQMOkCVfnS6IMbrVb7obNbq8tmNVvXOmmc3ZcQOG/pOwZZybLPgDdQwEHp0PW4K
	VaXw==
X-Gm-Message-State: AHPjjUhdqvqRMyo/J23IY4+kkdl/SVrmHTlkHDPgbD10MA1HyZ87Pt5E
	X98T8Nw+5QJhg3koODUM9EkI2QsSKFo=
X-Google-Smtp-Source: AOwi7QBcAMlsaVLzMYeAwOuOar5gC3RrNkfeFji+DwMTDui8SnY5yXtgtqXjFrSzfYXWpwoc4w2c0g==
X-Received: by 10.84.244.135 with SMTP id h7mr11168130pll.110.1506437322996;
	Tue, 26 Sep 2017 07:48:42 -0700 (PDT)
Received: from yct-lpt.lan (50-39-175-47.bvtn.or.frontiernet.net.
	[50.39.175.47]) by smtp.gmail.com with ESMTPSA id
	i12sm16285950pgr.21.2017.09.26.07.48.41 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Sep 2017 07:48:41 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <c3cfd787-a8c2-f419-65b6-b8326d48d989@linuxfoundation.org>
Date: Tue, 26 Sep 2017 07:48:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Pruning poky-contrib Oct 1st
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
X-List-Received-Date: Tue, 26 Sep 2017 14:48:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hello poky-contrib users,

We are going to start regularly moving branches from poky-contrib to
poky-contrib-archive that haven't been active for 1 year.

The next move will happen on October 1st. Please prune any branch that
should not be archived before the 1st.

If you have branches that need to stay in place but are no longer
receiving updates please update the list at
https://wiki.yoctoproject.org/wiki/Poky_Contrib or e-mail me. For
example, you might need a branch to stay where it is because it is
referenced in documentation.

- -- 
Michael Halstead
Linux Foundation / SysAdmin

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzowQ2UYmQerfiW8/amSWNbpCWpUFAlnKaMcACgkQamSWNbpC
WpWw8hAAm+FTba/EK1NYz4CQJbTG08iiOPiqHm9oO8wlmAswigL6HrBJ5TDsgIVh
FdkKcEpGhvHVlGfWZsUFAEUKayd4+5oCKg9zOST9/4lDc9SHbyAtf587POmVYVz2
P3r+423CJY2vkH8Xp3xl1zJAmRIUGpwWQqJu2ERcLxfjGWgQy5fhgFo7zX8vMPOa
8ONzbpF5lWO86DtAzErCeerS6ZTkC0lOzMyhARXE6XPFh+nb+AvMY5ewCPVbCRQK
ilK0YfjKIGv1tJ4g4zfsa2Lbexp6lsI3lWvPGjwFYZvWXB/OKAE0iSUtuWimepDQ
8mm633tVEk5tuksCYU7CRox2xiU9oYlCV2pFp3HKBnIxkxOyhoFYYiE7PdTC8Tp5
dRpOGzyiEU38en2UlDiq+Uc26kW8GGIHnp0ku0FCAWxPI0ioPusTpV2iZm1lwGnl
ydweOAyNPOo9cD5kjo19dnWjUYtxty1vjtz4F2iTobJgenmxFjDrmUmCYnNYZmQu
Ayt+s5n9/kr/CXOzfCHQO+Xal9kPXI1bhKapFhk4rWg0/5hSypm5J24BT1jSTjgw
amGMeZgbn3jOEBMehpPHvJ0OMXfBJfstTgD5UUCIwtc1tpbPxAbKKZz2GK/yqLeL
j8ztjW8TmSfmnuBWGeDM9ObotRIYz8M+E+tsl+VHzfCmTXusPVk=
=TNB2
-----END PGP SIGNATURE-----

