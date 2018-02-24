Return-Path: <ingo.flaschberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A262E00E00; Sat, 24 Feb 2018 15:31:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,LONGWORDS,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ingo.flaschberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.0 LONGWORDS Long string of long words
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 465B5E0074C
	for <yocto@yoctoproject.org>; Sat, 24 Feb 2018 15:31:19 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id q83so11063153wme.5
	for <yocto@yoctoproject.org>; Sat, 24 Feb 2018 15:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=CDBWkLG2jKMdTg4siIi+aI8MNZU7NwODBGqGJ+2Yl5k=;
	b=hm08BHJudUEPlqPdw31t+oHMZj8T4snt64SnH6g+Syv63m6uIEpotzDajNRHJo1CBB
	d5KeJRjBmeUuvqohiselAVxgcxN8SNQTPZzISWeY17jDlfD6eEl2KSVuJbvSscexPPki
	paaoYbvqpzxgmImGkIgp9f6vpVE78qTerlkH7k2MyKs9nLrQZKImOSMOCxRfP85ZapJ6
	zVSfFZ67NyUtASIdVfu1gSjVpwUi8aHPAt7BCQ7AWEwAxWtq/7KavMg6Fve8qmAShzV9
	RHClRc3b3yVVmRhqGyaPS2JANCE9ZHiTjMvUgKNYGm3lsOCwqnwQaEU0JdJMPt7qe4KH
	90BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=CDBWkLG2jKMdTg4siIi+aI8MNZU7NwODBGqGJ+2Yl5k=;
	b=q9iXJEgwbz5myPhUI8crlMC6nni44nDHXKTSbvKJFMntn6/Bi7qJAkzJs2k3626Huq
	mh9EEUUFp1M2NXCYUrjVWuZ+e7h4lYq/SCtQkEo1h4NQ1TaVRAr57FGJdqIGrVoAVaFk
	JajnK1O3pYZNZW7YfQdUa/ARev6JtBgxii1a1KcaZDtU1mFgCqhPFtjOa+4g9SKgtBZ5
	Sc8KwBINdgJcAFieE2OWYvpUAPAuvSzSwGjp7lfusDos7dILxGmqckgnXf8cPcN6Ca6G
	ousQpx4HtoSiHspfgIpKrziVdsLlOANZmu7XPX1BWa2JuSxkMC+6clTm7QW4ZxxXLeQg
	lC7g==
X-Gm-Message-State: APf1xPDM+A7xQKNRSJGAoQ3FmjJQeLelad4bJBaQnBp/H1QvBs7yzZZR
	p5cOa4gJ/r0b305QjGGkeaXXmUtf
X-Google-Smtp-Source: AH8x225TkcdiaDkR7uDJ23Oqdb7yt1Xbn6bKuyOSCnDcEQccewi/JMgz6rM5V1EEa/Bdk+irNtzIyg==
X-Received: by 10.28.142.142 with SMTP id q136mr5207084wmd.131.1519515078800; 
	Sat, 24 Feb 2018 15:31:18 -0800 (PST)
Received: from ?IPv6:2a02:8388:8702:7f00:2060:5076:cca0:f3d7?
	(2a02-8388-8702-7f00-2060-5076-cca0-f3d7.cable.dynamic.v6.surfer.at.
	[2a02:8388:8702:7f00:2060:5076:cca0:f3d7])
	by smtp.gmail.com with ESMTPSA id
	l73sm11333432wma.15.2018.02.24.15.31.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Feb 2018 15:31:17 -0800 (PST)
To: Patrick Ohly <patrick.ohly@intel.com>, yocto@yoctoproject.org
References: <1513785034.5979.256.camel@intel.com>
	<20171220155058.8961-1-patrick.ohly@intel.com>
	<8524e767-204b-2e4f-9971-d0c51862de0c@gmail.com>
	<1515517050.6718.15.camel@intel.com>
	<4e7d3d4d-12b5-3e5c-94be-084fbbc22daf@gmail.com>
	<1515578331.6718.20.camel@intel.com>
From: Ingo Flaschberger <ingo.flaschberger@gmail.com>
Message-ID: <c835abfa-c411-eefe-3ed4-909529965813@gmail.com>
Date: Sun, 25 Feb 2018 00:31:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <1515578331.6718.20.camel@intel.com>
Subject: Re: [meta-swupd][PATCH 1/1] bundles.py: allow username/password encoded in URLs
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
X-List-Received-Date: Sat, 24 Feb 2018 23:31:21 -0000
X-Groupsio-MsgNum: 39983
Content-Type: multipart/mixed; boundary="------------8F83E12D588B96D59EBF2031"
Content-Language: de-AT

--------------8F83E12D588B96D59EBF2031
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear Patrick,

attached requested patch.

Kind regards,
     Ingo Flaschberger

Am 10.01.2018 um 10:58 schrieb Patrick Ohly:
> On Tue, 2018-01-09 at 19:28 +0100, Ingo Flaschberger wrote:
>> Dear Patrick,
>>
>> it works if you replace:
>>       manager.add_password(None, parsed_url, parsed_url.username,
>> parsed_url.password)
>> with:
>>        manager.add_password(None, new_url, parsed_url.username,
>> parsed_url.password)
> I assume this works on top of my proposal. To avoid such ambiguity and
> the risk that something gets merged that is still incomplete, please
> post the entire patch as tested by you. The right way would be "git
> send-email", but I can also take "git diff" attached to an email.
>


--------------8F83E12D588B96D59EBF2031
Content-Type: text/plain; charset=UTF-8;
 name="swupd_auth.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="swupd_auth.patch"

ZGlmZiAtLWdpdCBhL2xpYi9zd3VwZC9idW5kbGVzLnB5IGIvbGliL3N3dXBkL2J1bmRsZXMucHkK
aW5kZXggYjRjNmY0OS4uYmVjOTVkNCAxMDA2NDQKLS0tIGEvbGliL3N3dXBkL2J1bmRsZXMucHkK
KysrIGIvbGliL3N3dXBkL2J1bmRsZXMucHkKQEAgLTQsNiArNCw3IEBAIGltcG9ydCBzdWJwcm9j
ZXNzCiBpbXBvcnQgc2h1dGlsCiBpbXBvcnQgdXJsbGliLnJlcXVlc3QKIGltcG9ydCB1cmxsaWIu
ZXJyb3IKK2ltcG9ydCB1cmxsaWIucGFyc2UKIGZyb20gYmIudXRpbHMgaW1wb3J0IGV4cG9ydF9w
cm94aWVzCiBmcm9tIG9lLnBhY2thZ2VfbWFuYWdlciBpbXBvcnQgUnBtUE0KIGZyb20gb2UucGFj
a2FnZV9tYW5hZ2VyIGltcG9ydCBPcGtnUE0KQEAgLTE1Miw2ICsxNTMsMzAgQEAgZGVmIGNvcHlf
YnVuZGxlX2NvbnRlbnRzKGQpOgogICAgIGZvciBibmRsIGluIGJ1bmRsZXM6CiAgICAgICAgIHN0
YWdlX2VtcHR5X2J1bmRsZShkLCBibmRsKQogCitkZWYgaGFuZGxlX3BsYWluX2F1dGgodXJsKToK
KyAgICAiIiIKKyAgICBDaGVjayBmb3Igc3BlY2lhbCB1cmxzIHdpdGggdXNlcm5hbWUvcGFzc3dv
cmQgKGFzIGluIGh0dHA6Ly91c2VyOnBhc3N3b3JkQGhvc3QvKSwKKyAgICBleHRyYWN0IHRob3Nl
IGFuZCBpbnN0YWxsIGFuIGF1dGggaGFuZGxlciB3aGljaCB3aWxsIHByb3ZpZGUgdGhlbQorICAg
IHRvIHRoZSBIVFRQIHNlcnZlciB3aGVuIG5lZWRlZC4gUmV0dXJucyB0aGUgVVJMIHRoYXQgaXMg
dG8gYmUgaW5zdGVhZCBvZiB0aGUgb3JpZ2luYWwgb25lLgorICAgICIiIgorICAgIHBhcnNlZF91
cmwgPSB1cmxsaWIucGFyc2UudXJsc3BsaXQodXJsKQorICAgIGlmIHBhcnNlZF91cmwudXNlcm5h
bWUgIT0gTm9uZToKKyAgICAgICAgIyBVc2UgdGhlIG5ldGxvYyB3aXRoIGp1c3QgdGhlIGhvc3Ru
YW1lLCB3aXRob3V0IHVzZXJuYW1lL3Bhc3N3b3JkLgorICAgICAgICBuZXRsb2MgPSBwYXJzZWRf
dXJsLmhvc3RuYW1lCisgICAgICAgIGlmIHBhcnNlZF91cmwucG9ydCBpcyBub3QgTm9uZToKKyAg
ICAgICAgICAgIG5ldGxvYyArPSAiOiVkIiAlIHBhcnNlZF91cmwucG9ydAorICAgICAgICBuZXdf
dXJsID0gdXJsbGliLnBhcnNlLlNwbGl0UmVzdWx0KHBhcnNlZF91cmwuc2NoZW1lLCBuZXRsb2Ms
IHBhcnNlZF91cmwucGF0aCwgcGFyc2VkX3VybC5xdWVyeSwgcGFyc2VkX3VybC5mcmFnbWVudCkK
KyAgICAgICAgIyBUaGUgdXNlcm5hbWUvcGFzc3dvcmQgYXJlIGluc3RhbGxlZCBwZXJtYW5lbnRs
eSBpbiB0aGUgdXJsbGliLnJlcXVlc3QgbW9kdWxlCisgICAgICAgICMgZm9yIGZ1dHVyZSB1c2Ug
d2l0aCBhbGwgVVJMcyBiZW5lYXRoIHVybC4KKyAgICAgICAgbWFuYWdlciA9IHVybGxpYi5yZXF1
ZXN0LkhUVFBQYXNzd29yZE1ncldpdGhEZWZhdWx0UmVhbG0oKQorICAgICAgICBtYW5hZ2VyLmFk
ZF9wYXNzd29yZChOb25lLCBuZXdfdXJsLCBwYXJzZWRfdXJsLnVzZXJuYW1lLCBwYXJzZWRfdXJs
LnBhc3N3b3JkKQorICAgICAgICBhdXRoSGFuZGxlciA9IHVybGxpYi5yZXF1ZXN0LkhUVFBCYXNp
Y0F1dGhIYW5kbGVyKG1hbmFnZXIpCisgICAgICAgIG9wZW5lciA9IHVybGxpYi5yZXF1ZXN0LmJ1
aWxkX29wZW5lcihhdXRoSGFuZGxlcikKKyAgICAgICAgdXJsbGliLnJlcXVlc3QuaW5zdGFsbF9v
cGVuZXIob3BlbmVyKQorICAgICAgICByZXR1cm4gdXJsbGliLnBhcnNlLnVybHVuc3BsaXQobmV3
X3VybCkKKyAgICBlbHNlOgorICAgICAgICByZXR1cm4gdXJsCisKIGRlZiBkb3dubG9hZF9tYW5p
ZmVzdHMoY29udGVudF91cmwsIHZlcnNpb24sIGNvbXBvbmVudCwgdG9fZGlyKToKICAgICAiIiIK
ICAgICBEb3dubG9hZCBvbmUgbWFuaWZlc3QgZmlsZSBhbmQgcmVjdXJzaXZlbHkgYWxsIG1hbmlm
ZXN0cyByZWZlcmVuY2VkIGJ5IGl0LgpAQCAtMjAzLDcgKzIyOCw3IEBAIGRlZiBkb3dubG9hZF9v
bGRfdmVyc2lvbnMoZCk6CiAgICAgYSBub3JtYWwgYnVpbGQgYW5kIHRodXMgaXMgbm90IG9uIHRo
ZSBjcml0aWNhbCBwYXRoLgogICAgICIiIgogCi0gICAgY29udGVudF91cmwgPSBkLmdldFZhcign
U1dVUERfQ09OVEVOVF9VUkwnLCBUcnVlKQorICAgIGNvbnRlbnRfdXJsID0gaGFuZGxlX3BsYWlu
X2F1dGgoZC5nZXRWYXIoJ1NXVVBEX0NPTlRFTlRfVVJMJywgVHJ1ZSkpCiAgICAgdmVyc2lvbl91
cmwgPSBkLmdldFZhcignU1dVUERfVkVSU0lPTl9VUkwnLCBUcnVlKQogICAgIGN1cnJlbnRfZm9y
bWF0ID0gaW50KGQuZ2V0VmFyKCdTV1VQRF9GT1JNQVQnLCBUcnVlKSkKICAgICBkZXBsb3lfZGly
ID0gZC5nZXRWYXIoJ0RFUExPWV9ESVJfU1dVUEQnLCBUcnVlKQpAQCAtMjQwLDYgKzI2NSwxMSBA
QCBkZWYgZG93bmxvYWRfb2xkX3ZlcnNpb25zKGQpOgogICAgICAgICAgICAgICAgIGJiLmRlYnVn
KDEsICclcyBkb2VzIG5vdCBleGlzdCwgc2tpcHBpbmcgdGhhdCBmb3JtYXQnICUgdXJsKQogICAg
ICAgICAgICAgZWxzZToKICAgICAgICAgICAgICAgICByYWlzZQorICAgICAgICBleGNlcHQgdXJs
bGliLmVycm9yLlVSTEVycm9yIGFzIHVybF9lcnJvcjoKKyAgICAgICAgICAgIGlmIHJlLnNlYXJj
aCggJ05vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnknLCBzdHIodXJsX2Vycm9yLnJlYXNvbikpOgor
ICAgICAgICAgICAgICAgIGJiLmRlYnVnKDEsICclcyBkb2VzIG5vdCBleGlzdCwgc2tpcHBpbmcg
dGhhdCBmb3JtYXQnICUgdXJsKQorICAgICAgICAgICAgZWxzZToKKyAgICAgICAgICAgICAgICBy
YWlzZQogCiAgICAgIyBOb3cgZ2V0IHRoZSBNYW5pZmVzdHMgb2YgdGhlIGxhdGVzdCB2ZXJzaW9u
cyBhbmQgdGhlCiAgICAgIyB2ZXJzaW9ucyB3ZSBhcmUgc3VwcG9zZWQgdG8gcHJvdmlkZSBhIGRl
bHRhIGZvciwgYXMgYSBzdGFydGluZyBwb2ludC4K

--------------8F83E12D588B96D59EBF2031--
