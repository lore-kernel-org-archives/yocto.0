Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 849D9E003E1; Tue, 28 Mar 2017 11:25:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DD53E00349
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 11:25:39 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id g2so23110290pge.2
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 11:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=VC8PVBO11wQaBlVHgCMTf4H9qnBNfSFjKnzhex4bulg=;
	b=G+faqRloYd9LjClXXx3bJCOuwwNuaYYB6KyEHsyq/DzYi7PwfuxzwLe8lfxphscI91
	14g2q+7vkCTN1k4QWT6O3MqpQxvHyoX2ZvwHtNPp+hSKYScc9mJDUlb2Szv8oryGWny9
	oaqFb3YvIoN0tSzRt5UU1e+9M9D6VaI54aOCQmFilGhQsIbx9sE29ps715CKJ3WcnwyB
	tnc8+b0nh3idITx3100Pa1w253oOScoyOR6xpr/bwrY1g/vSPe5VA3mVSGZXBaasiMQZ
	KyfTU5sQSnTTLixY+EB1+D2fidTwglUD8QxgKHh947q9byHTZuTog6eaxAIMsHT32B4f
	ICDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=VC8PVBO11wQaBlVHgCMTf4H9qnBNfSFjKnzhex4bulg=;
	b=mqfavlNBE8v3wWbN+s2p0Z3dPI2S/JA1Xsu2TkXkuMFXMsFxBV1kB8g6exujEVY7CG
	VQ3tjs1QyOQJMYmEBsNca5NSYSpbfOHGq842khoKRRfMJg66Ks9fR1EpGPDt8I9lgczb
	OPivL+EiprS+iYpKVLS0xRDRolznUYOChLKzRMzb/cxaxoiFjQdRVCwaFktmQD7vHiaO
	38RNmkNHRobBnFdfz3Vv69Rx9obj/4+Grd6tVkDW4/OtnfTkjKsej7K9Vt+H186mcudZ
	1U0tBvwA0BjHXJ4VK2bQjgRBfMymwaLHVBAKB3fLWuEGtQprIobK3zPay4hi1JORkWnR
	iO8g==
X-Gm-Message-State: AFeK/H0pEC+jt9L88buiF355SvlPhB0aI9iqV5aRERT8RAgm7umJ22gerRkDSlEjYpN00Q==
X-Received: by 10.99.39.194 with SMTP id n185mr31257095pgn.24.1490725536495;
	Tue, 28 Mar 2017 11:25:36 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:647:4c00:23ec:1153:8bec:b665:1636])
	by smtp.gmail.com with ESMTPSA id
	s21sm8725634pgg.65.2017.03.28.11.25.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 Mar 2017 11:25:35 -0700 (PDT)
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
References: <CAKEinFwC58g5q9wmvwhTfn5Au3n3Qrx8xRkSy7yUpehyedLiog@mail.gmail.com>
	<CAMKF1soTiRbge8yY3TJc8+EPgeQpmAPOe1q4=SN=9duSyEix5A@mail.gmail.com>
	<20170328181927.GA11222@csclub.uwaterloo.ca>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <db313b8c-6426-45da-fe3f-0c7a98b53852@gmail.com>
Date: Tue, 28 Mar 2017 11:25:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170328181927.GA11222@csclub.uwaterloo.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Tue, 28 Mar 2017 18:25:48 -0000
X-Groupsio-MsgNum: 35278
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="lR4UX92FbUOXDSgp5m77aEBsaoiphmHJK"

--lR4UX92FbUOXDSgp5m77aEBsaoiphmHJK
Content-Type: multipart/mixed; boundary="UQq70Dk0TBqm5mrlE0EPB4UWfvDbUg98r";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
Cc: Cody Piersall <cody@arrc.ou.edu>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <db313b8c-6426-45da-fe3f-0c7a98b53852@gmail.com>
Subject: Re: [yocto] Remove a recipe's do_install_append() function in an
 append file
References: <CAKEinFwC58g5q9wmvwhTfn5Au3n3Qrx8xRkSy7yUpehyedLiog@mail.gmail.com>
 <CAMKF1soTiRbge8yY3TJc8+EPgeQpmAPOe1q4=SN=9duSyEix5A@mail.gmail.com>
 <20170328181927.GA11222@csclub.uwaterloo.ca>
In-Reply-To: <20170328181927.GA11222@csclub.uwaterloo.ca>

--UQq70Dk0TBqm5mrlE0EPB4UWfvDbUg98r
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/28/17 11:19 AM, Lennart Sorensen wrote:
> On Tue, Mar 28, 2017 at 10:27:15AM -0700, Khem Raj wrote:
>> On Thu, Mar 23, 2017 at 3:28 PM, Cody Piersall <cody@arrc.ou.edu> wrot=
e:
>>> Hello,
>>>
>>> I am building zsh from meta-oe layer, and it has a do_install_append(=
)
>>> function defined like this:
>>>
>>> do_install_append () {
>>>     rm -fr ${D}/usr/share
>>> }
>>>
>>> which gets rid of lots lots of useful functionality, like
>>> context-aware autocompletion.  Can a bbappend file get rid of that
>>> function, or do I need to edit the actual recipe? I've attempted
>>> defining an empty do_install_append() { : } but it didn't work.
>>>
>>
>> if its in a bbappend, there is not much you can do about undoing it ex=
cept
>> to not apply the bbappend or modify it directly.
>>
>> So you can send a patch to meta-oe to convince that its a good idea to=
 keep
>> /usr/share for zsh, or you can carry a local patch to meta-oe where yo=
u undo it
>=20
> Perhaps instead of deleting it, it should be put in another package tha=
t
> people can choose to install if they want it.  Deleting it certainly
> does seem rather unfortunate if someone actulally wanted it.
>=20

We put common stuff in commonly used layers. Secondly, a patch to
package the content of /usr/share into a package of its own something
like zsh-misc might be OK and we don't have to delete it and keep both
camps happy.


--UQq70Dk0TBqm5mrlE0EPB4UWfvDbUg98r--

--lR4UX92FbUOXDSgp5m77aEBsaoiphmHJK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljaqp4ACgkQuwUzVZGdMxSCUgCfVy4fbg31RmrUfRfcxCixcg7B
AM0An0zHxNQ1JkHVHOeIW5dFRPMTfUsx
=07rs
-----END PGP SIGNATURE-----

--lR4UX92FbUOXDSgp5m77aEBsaoiphmHJK--
