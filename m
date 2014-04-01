Return-Path: <Alexandru.Vaduva@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id AA938E00C53
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 03:45:55 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1; Tue, 1 Apr 2014
	12:45:53 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 6A23F288415;
	Tue,  1 Apr 2014 12:45:53 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 1 Apr 2014 12:45:48 +0200
Message-ID: <1396349149-61351-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
X-Mailman-Approved-At: Tue, 01 Apr 2014 08:01:50 -0700
Cc: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
Subject: [PATCH 0/1] Changed refpolicy value FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Tue, 01 Apr 2014 10:46:01 -0000
Content-Type: text/plain

From: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>

The value was defined as:
    FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-${PV}:"
and changed it to:
    FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20130424:"
because the bb that inherit this overwrites the PV every time,
changing its name.

Upstream-Status: Pending

Alexandru.Vaduva (1):
  refpolicy: Updated FILESEXTRAPATHS_prepend value

 recipes-security/refpolicy/refpolicy_2.20130424.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.7.10.4


