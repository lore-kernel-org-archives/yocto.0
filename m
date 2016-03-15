Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37F9EE007D2; Tue, 15 Mar 2016 15:56:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26462E006AE
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 15:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=Mime-Version:To:Message-Id:Date:Subject:
	Content-Type:From; bh=/Z8jnV4DUs4CqEu/3zoStm5rtK7/9JIWG3oZnbHquAY=;
	b=eUBsNMz
	u4Sd0yiA2gs4ZbZvXpeFvjdoj02/J7KMz9FWYY22qkqm5py3kO3HrtqZfkJBUcqFLW3nCToSwqL81
	QFify5mmLaNXAKKmx+J+VOBMboleYo7pTUwXUUDSygLUjHlGdBPq/5vWq8n4KYCUNwxYq9E099SSQ
	ENeAQoBJsw=;
Received: from durham.keylevel.com ([88.97.63.243]:54977
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86_1) (envelope-from <opensource@keylevel.com>)
	id 1afxss-0016dz-EF
	for yocto@yoctoproject.org; Tue, 15 Mar 2016 22:56:14 +0000
From: Chris Tapp <opensource@keylevel.com>
X-Pgp-Agent: GPGMail 2.6b2
Date: Tue, 15 Mar 2016 22:56:08 +0000
Message-Id: <9A61AAE9-AAD4-4DD4-8EDA-37213EC09B3D@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Master or master-next?
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
X-List-Received-Date: Tue, 15 Mar 2016 22:56:21 -0000
X-Groupsio-MsgNum: 29039
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5B1D6F0B-8C70-4F40-AB0F-AA5CFEC7FAF8";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_5B1D6F0B-8C70-4F40-AB0F-AA5CFEC7FAF8
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

Should I use master or master-next to track 2.1 release progress?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real cheap!


--Apple-Mail=_5B1D6F0B-8C70-4F40-AB0F-AA5CFEC7FAF8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW6JMQAAoJEAM2GeiJDBSGJpcP/ifcTEopoVPKCIIqnNo+FjKN
DGwx+ocdDdfK9iAJHtM70zFEydR/cQvz1htRRl2e08ivFlnB9B8sQbwmYv7wP8AV
R2FHeRFLgtVWdK4VUjlrBZB142fUq+75OFYrLOvggUValN5qXOKEZnmvlb65+qIp
TJcDpJSbAxlzwV0ZdAtNiyRjYgUQarq1kR6FGA6sY/ptP0QG100kvRMokaMqewGg
wTEbNqv28qKzmYqDpUROQgvlm4CvvEEyVPOyi6LWzhJdGtY3hZmrkSi3H2WAZM6v
meoNr0KmJYxjEg7Jn1obIK5/8uGRN+NoHAt5mbcU2AEDiJZhsWJ5C6PnZoBC2iif
oRNn7Jh/qdbGsJK2KwhiK71BUjUkXR+VA1XwP0JE/N5fuIKEAdVUN5zlsy12cmN3
z4WxNZ2aOZvc+HggRQr+groF2j/jmYYkggY0FhQBBJnETI+fm+H/VDFGa5w6fW0q
SdPklrTYR45owHcszgJlV9IEbmpl0NmYUjlXCsV53YX4Nd/bmev9O2mwqUVK+KL4
QECc+/oYefyM+8PAGR+GrDDdzdL4TaHccBbdmD9gWDtJp7TX1V2R6swjrLlsvcXf
MSMO1FF9HzaXolSxUCR0y/5lzAKakqsynQWTKEOr85lah5zzF+WjQ8Qselrckz/q
JorG1JqyKkMFIjSQt2ev
=bjpP
-----END PGP SIGNATURE-----

--Apple-Mail=_5B1D6F0B-8C70-4F40-AB0F-AA5CFEC7FAF8--
