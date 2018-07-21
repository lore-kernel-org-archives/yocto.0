Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 382A2E00E97; Sat, 21 Jul 2018 00:55:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f46.google.com (mail-pl0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0145FE00D8E
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 00:55:25 -0700 (PDT)
Received: by mail-pl0-f46.google.com with SMTP id b1-v6so6132810pls.5
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 00:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:from:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=7W0Wv+Q1kW3lsmxt9JEPBUPZDdE+rX7VH5uoXJtMcWw=;
	b=exqKuUhpxdmO9tfiJ9Pq0xpWdWW4Zg1fUhVlPnekt6/2q54If9RgJLAJFWszwyuuro
	3e87FXHQ0WNhXJWH8ShcVhh9NFvxHaSTwb1gER+LI6sveRdWhMAe0lahbe5xrzvQ/Cdz
	6ieG7wAeYksVUjIS/v/cBddvC6RQMbsQGnj2fotpboNPxJPoNju2cQ96AlY2fFevpPJ+
	2TPxD93T1y2diiaUhIt/dZoapDHXsfy0HNQtqnhHBZeKTlbtye1qBloVyvvta+vue36g
	vMvp9rGp6y6pfhSGSFV33xdGKmUsxv6+PJ/y3ALuFnfvydT2yixqLNiABhAV4qVRg9TJ
	dFvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=7W0Wv+Q1kW3lsmxt9JEPBUPZDdE+rX7VH5uoXJtMcWw=;
	b=Ed3WnerMW46TqkDbslcJlwTmtnxJJ18XQtx7931FNRZ/pbfvh0MImPvxdfHyX2Cf6V
	xO2k3LA2ivUHqtEpVZULCjIrxZEBsP5LmanCtNvkaeh9ryBZFdlrqmjwF8umJgieE2N2
	+kwX/GVTyIEqen/N4YI3Btgvf3uJCAVP5bSPcZs06ulcwqeSmMnJb3K5rWOZe4CbGBeX
	ddal8n0OH/ptU3xSgkqgGtcdqwlkZzxLhOz3N78PlTGAVOpuWVuizjTHYj9eLWDYxAf4
	hRo4ToB0487by4tm7DEtksDmna2tEzMzpu8m9MuJ75EkS6KMIzv7LNV2QTaKWtwgA0th
	pQdw==
X-Gm-Message-State: AOUpUlGaLk2sAYzpjO4DX9JJ/Shwb7haift+d6bxKZMrMaVMGl4sb8j4
	NEalmBW7h4OCB8SUSXUJFJQGho/nClw=
X-Google-Smtp-Source: AAOMgpezx+SJ9onWCNUen+XLtpswCmnPpL1AHnOreoXBbtwuMgg2+VNKw8DPb6cnjcLWjcD8CZiL8Q==
X-Received: by 2002:a17:902:8a92:: with SMTP id
	p18-v6mr5065369plo.148.1532159725000; 
	Sat, 21 Jul 2018 00:55:25 -0700 (PDT)
Received: from [10.211.4.220] (fp76f115f6.knge107.ap.nuro.jp. [118.241.21.246])
	by smtp.gmail.com with ESMTPSA id
	g85-v6sm10185410pfk.39.2018.07.21.00.55.21
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 21 Jul 2018 00:55:24 -0700 (PDT)
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
To: yocto@yoctoproject.org
References: <051ffcba-0255-4d93-e8f8-01993e967ef2@gmail.com>
Message-ID: <2d030ea4-b2df-58fe-9947-e1c4e40ea17b@gmail.com>
Date: Sat, 21 Jul 2018 10:55:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <051ffcba-0255-4d93-e8f8-01993e967ef2@gmail.com>
Subject: Re: bitbake is corrupting my files during unpacking
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
X-List-Received-Date: Sat, 21 Jul 2018 07:55:27 -0000
Content-Type: multipart/alternative;
	boundary="------------9B8763D0DE90E79FB5C2D556"
Content-Language: en-US

--------------9B8763D0DE90E79FB5C2D556
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

well apparently this is caused by the unzip binary that is compiled by 
the openembedded unzip recipe.
If I unzip the same zip file with the unzip binary that is shipped with 
my system(manjaro) then the files are not corrupted but when I use the 
unzip binary compiled by the openembedded recipe I get error and file 
corruptions.
These are some of the errors I get when unzipping with the openembedded 
unzip:
lchmod (file attributes) error: Function not implemented
linux-amlogic-amlogic-3.14-nougat/security/keys/request_key_auth.c -> /* 
Request key authorisation token key definition.^J *^J * Copyright (C) 
2005 Red Hat, Inc. All Rights Reserved.^J * Written by David Howells 
(dhowells@redhat.com)^J *^J * This program is free software; you can 
redistribute it and/or^J * modify it under the terms of the GNU General 
Public License^J * as published by the Free Software Foundation; either 
version^J * 2 of the License, or (at your option) any later version.^J 
*^J * See Documentation/security/keys-request-key.txt^J */^J^J#include 
<linux/module.h>^J#include <linux/sched.h>^J#include 
<linux/err.h>^J#include <linux/seq_file.h>^J#include 
<linux/slab.h>^J#include <asm/uaccess.h>^J#include 
"internal.h"^J#include <keys/user-type.h>^J^Jstatic int 
request_key_auth_instantiate(struct key *,^J^I^I^I^I^Istruct 
key_preparsed_payload *);^Jstatic void request_key_auth_describe(const 
struct key *, struct seq_file *);^Jstatic void 
request_key_auth_revoke(struct key *);^Jstatic void 
request_key_auth_destroy(struct key *);^Jstatic long 
request_key_auth_read(const struct key *, char __user *, 
size_t);^J^J/*^J * The request-key authorisation key type definition.^J 
*/^Jstruct key_type key_type_request_key_auth = {^J^I.name^I^I= 
".request_key_auth",^J^I.def_datalen^I= sizeof(struct 
request_key_auth),^J^I.instantiate^I= 
request_key_auth_instantiate,^J^I.describe^I= 
request_key_auth_describe,^J^I.revoke^I^I= 
request_key_auth_revoke,^J^I.destroy^I= 
request_key_auth_destroy,^J^I.read^I^I= 
request_key_auth_read,^J};^J^J/*^J * Instantiate a request-key 
authorisation key.^J */^Jstatic int request_key_auth_instantiate(struct 
key *key,^J^I^I^I^I^Istruct key_preparsed_payload 
*prep)^J{^J^Ikey->payload.data = (struct request_key_auth 
*)prep->data;^J^Ireturn 0;^J}^J^J/*^J * Describe an authorisation 
token.^J */^Jstatic void request_key_auth_describe(const struct key 
*key,^J^I^I^I^I struct seq_file *m)^J{^J^Istruct request_key_auth *rka = 
key->payload.data;^J^J^Iseq_puts(m, "key:");^J^Iseq_puts(m, 
key->description);^J^Iif (key_is_instantiated(key))^J^I^Iseq_printf(m, " 
pid:%d ci:%zu", rka->pid, rka->callout_len);^J}^J^J/*^J * Read the 
callout_info data (retrieves the callout information).^J * - the key's 
semaphore is read-locked^J */^Jstatic long request_key_auth_read(const 
struct key *key,^J^I^I^I^I  char __user *buffer, size_t 
buflen)^J{^J^Istruct request_key_auth *rka = 
key->payload.data;^J^Isize_t datalen;^J^Ilong ret;^J^J^Idatalen = 
rka->callout_len;^J^Iret = datalen;^J^J^I/* we can return the data as is 
*/^J^Iif (buffer && buflen > 0) {^J^I^Iif (buflen > 
datalen)^J^I^I^Ibuflen = datalen;^J^J^I^Iif (copy_to_user(buffer, 
rka->callout_info, buflen) != 0)^J^I^I^Iret = -EFAULT;^J^I}^J^J^Ireturn 
ret;^J}^J^J/*^J * Handle revocation of an authorisation token key.^J *^J 
* Called with the key sem write-locked.^J */^Jstatic void 
request_key_auth_revoke(struct key *key)^J{^J^Istruct request_key_auth 
*rka = key->payload.data;^J^J^Ikenter("{%d}", key->serial);^J^J^Iif 
(rka->cred) {^J^I^Iput_cred(rka->cred);^J^I^Irka->cred = 
NULL;^J^I}^J}^J^J/*^J * Destroy an instantiation authorisation token 
key.^J */^Jstatic void request_key_auth_destroy(struct key 
*key)^J{^J^Istruct request_key_auth *rka = 
key->payload.data;^J^J^Ikenter("{%d}", key->serial);^J^J^Iif (rka->cred) 
{^J^I^Iput_cred(rka->cred);^J^I^Irka->cred = 
NULL;^J^I}^J^J^Ikey_put(rka->target_key);^J^Ikey_put(rka->dest_keyring);^J^Ikfree(rka->callout_info);^J^Ikfree(rka);^J}^J^J/*^J 
* Create an authorisation token for /sbin/request-key or whoever to 
gain^J * access to the caller's security data.^J */^Jstruct key 
*request_key_auth_new(struct key *target, const void 
*callout_info,^J^I^I^I^I size_t callout_len, struct key 
*dest_keyring)^J{^J^Istruct request_key_auth *rka, *irka;^J^Iconst 
struct cred *cred = current->cred;^J^Istruct key *authkey = 
NULL;^J^Ichar desc[20];^J^Iint ret;^J^J^Ikenter("%d,", 
target->serial);^J^J^I/* allocate a auth record */^J^Irka = 
kmalloc(sizeof(*rka), GFP_KERNEL);^J^Iif (!rka) {^J^I^Ikleave(" = 
-ENOMEM");^J^I^Ireturn ERR_PTR(-ENOMEM);^J^I}^J^Irka->callout_info = 
kmalloc(callout_len, GFP_KERNEL);^J^Iif (!rka->callout_info) 
{^J^I^Ikleave(" = -ENOMEM");^J^I^Ikfree(rka);^J^I^Ireturn 
ERR_PTR(-ENOMEM);^J^I}^J^J^I/* see if the calling process is already 
servicing the key request of^J^I * another process */^J^Iif 
(cred->request_key_auth) {^J^I^I/* it is - use that instantiation 
context here too 
*/^J^I^Idown_read(&cred->request_key_auth->sem);^J^J^I^I/* if the auth 
key has been revoked, then the key we're^J^I^I * servicing is already 
instantiated */^J^I^Iif (test_bit(KEY_FLAG_REVOKED, 
&cred->request_key_auth->flags))^J^I^I^Igoto 
auth_key_revoked;^J^J^I^Iirka = 
cred->request_key_auth->payload.data;^J^I^Irka->cred = 
get_cred(irka->cred);^J^I^Irka->pid = 
irka->pid;^J^J^I^Iup_read(&cred->request_key_auth->sem);^J^I}^J^Ielse 
{^J^I^I/* it isn't - use this process as the context */^J^I^Irka->cred = 
get_cred(cred);^J^I^Irka->pid = current->pid;^J^I}^J^J^Irka->target_key 
= key_get(target);^J^Irka->dest_keyring = 
key_get(dest_keyring);^J^Imemcpy(rka->callout_info, callout_info, 
callout_len);^J^Irka->callout_len = callout_len;^J^J^I/* allocate the 
auth key */^J^Isprintf(desc, "%x", target->serial);^J^J^Iauthkey = 
key_alloc(&key_type_request_key_auth, desc,^J^I^I^I cred->fsuid, 
cred->fsgid, cred,^J^I^I^I    KEY_POS_VIEW | KEY_POS_READ | 
KEY_POS_SEARCH |^J^I^I^I    KEY_USR_VIEW, KEY_ALLOC_NOT_IN_QUOTA);^J^Iif 
(IS_ERR(authkey)) {^J^I^Iret = PTR_ERR(authkey);^J^I^Igoto 
error_alloc;^J^I}^J^J^I/* construct the auth key */^J^Iret = 
key_instantiate_and_link(authkey, rka, 0, NULL, NULL);^J^Iif (ret < 
0)^J^I^Igoto error_inst;^J^J^Ikleave(" = {%d,%d}", authkey->serial, 
atomic_read(&authkey->usage));^J^Ireturn 
authkey;^J^Jauth_key_revoked:^J^Iup_read(&cred->request_key_auth->sem);^J^Ikfree(rka->callout_info);^J^Ikfree(rka);^J^Ikleave("= 
-EKEYREVOKED");^J^Ireturn 
ERR_PTR(-EKEYREVOKED);^J^Jerror_inst:^J^Ikey_revoke(authkey);^J^Ikey_put(authkey);^Jerror_alloc:^J^Ikey_put(rka->target_key);^J^Ikey_put(rka->dest_keyring);^J^Ikfree(rka->callout_info);^J^Ikfree(rka);^J^Ikleave("= 
%d", ret);^J^Ireturn ERR_PTR(ret);^J}^J^J/*^J * Search the current 
process's keyrings for the authorisation key for^J * instantiation of a 
key.^J */^Jstruct key *key_get_instantiation_authkey(key_serial_t 
target_id)^J{^J^Ichar description[16];^J^Istruct keyring_search_context 
ctx = {^J^I^I.index_key.type^I^I= 
&key_type_request_key_auth,^J^I^I.index_key.description^I= 
description,^J^I^I.cred^I^I^I= current_cred(),^J^I^I.match^I^I^I= 
user_match,^J^I^I.match_data^I^I= description,^J^I^I.flags^I^I^I= 
KEYRING_SEARCH_LOOKUP_DIRECT,^J^I};^J^Istruct key *authkey;^J^Ikey_ref_t 
authkey_ref;^J^J^Isprintf(description, "%x", 
target_id);^J^J^Iauthkey_ref = search_process_keyrings(&ctx);^J^J^Iif 
(IS_ERR(authkey_ref)) {^J^I^Iauthkey = ERR_CAST(authkey_ref);^J^I^Iif 
(authkey == ERR_PTR(-EAGAIN))^J^I^I^Iauthkey = 
ERR_PTR(-ENOKEY);^J^I^Igoto error;^J^I}^J^J^Iauthkey = 
key_ref_to_ptr(authkey_ref);^J^Iif (test_bit(KEY_FLAG_REVOKED, 
&authkey->flags)) {^J^I^Ikey_put(authkey);^J^I^Iauthkey = 
ERR_PTR(-EKEYREVOKED);^J^I}^J^Jerror:^J^Ireturn authkey;^J}^J
symlink error: File name too long
lchmod (file attributes) error: Function not implemented
linux-amlogic-amlogic-3.14-nougat/tools/gator/daemon/k/perf_event.h -> 
perf_event.3.12.h
lchmod (file attributes) error: Function not implemented

This error happens to multiple files where the file is symlinked to the 
content of the file and not to a path !
Where should I report this bug ? openembedded ? unzip upstream ?

--------------9B8763D0DE90E79FB5C2D556
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    well apparently this is caused by the unzip binary that is compiled
    by the openembedded unzip recipe.<br>
    If I unzip the same zip file with the unzip binary that is shipped
    with my system(manjaro) then the files are not corrupted but when I
    use the unzip binary compiled by the openembedded recipe I get error
    and file corruptions.<br>
    These are some of the errors I get when unzipping with the
    openembedded unzip:<br>
    <samp>lchmod (file attributes) error: Function not implemented</samp><samp><br>
    </samp><samp> 
      linux-amlogic-amlogic-3.14-nougat/security/keys/request_key_auth.c
      -&gt; /* Request key authorisation token key definition.^J *^J *
      Copyright (C) 2005 Red Hat, Inc. All Rights Reserved.^J * Written
      by David Howells (<a class="moz-txt-link-abbreviated" href="mailto:dhowells@redhat.com">dhowells@redhat.com</a>)^J *^J * This program is
      free software; you can redistribute it and/or^J * modify it under
      the terms of the GNU General Public License^J * as published by
      the Free Software Foundation; either version^J * 2 of the License,
      or (at your option) any later version.^J *^J * See
      Documentation/security/keys-request-key.txt^J */^J^J#include
      &lt;linux/module.h&gt;^J#include &lt;linux/sched.h&gt;^J#include
      &lt;linux/err.h&gt;^J#include &lt;linux/seq_file.h&gt;^J#include
      &lt;linux/slab.h&gt;^J#include &lt;asm/uaccess.h&gt;^J#include
      "internal.h"^J#include &lt;keys/user-type.h&gt;^J^Jstatic int
      request_key_auth_instantiate(struct key *,^J^I^I^I^I^Istruct
      key_preparsed_payload *);^Jstatic void
      request_key_auth_describe(const struct key *, struct seq_file
      *);^Jstatic void request_key_auth_revoke(struct key *);^Jstatic
      void request_key_auth_destroy(struct key *);^Jstatic long
      request_key_auth_read(const struct key *, char __user *,
      size_t);^J^J/*^J * The request-key authorisation key type
      definition.^J */^Jstruct key_type key_type_request_key_auth =
      {^J^I.name^I^I= ".request_key_auth",^J^I.def_datalen^I=
      sizeof(struct request_key_auth),^J^I.instantiate^I=
      request_key_auth_instantiate,^J^I.describe^I=
      request_key_auth_describe,^J^I.revoke^I^I=
      request_key_auth_revoke,^J^I.destroy^I=
      request_key_auth_destroy,^J^I.read^I^I=
      request_key_auth_read,^J};^J^J/*^J * Instantiate a request-key
      authorisation key.^J */^Jstatic int
      request_key_auth_instantiate(struct key *key,^J^I^I^I^I^Istruct
      key_preparsed_payload *prep)^J{^J^Ikey-&gt;payload.data = (struct
      request_key_auth *)prep-&gt;data;^J^Ireturn 0;^J}^J^J/*^J *
      Describe an authorisation token.^J */^Jstatic void
      request_key_auth_describe(const struct key *key,^J^I^I^I^I     
      struct seq_file *m)^J{^J^Istruct request_key_auth *rka =
      key-&gt;payload.data;^J^J^Iseq_puts(m, "key:");^J^Iseq_puts(m,
      key-&gt;description);^J^Iif
      (key_is_instantiated(key))^J^I^Iseq_printf(m, " pid:%d ci:%zu",
      rka-&gt;pid, rka-&gt;callout_len);^J}^J^J/*^J * Read the
      callout_info data (retrieves the callout information).^J * - the
      key's semaphore is read-locked^J */^Jstatic long
      request_key_auth_read(const struct key *key,^J^I^I^I^I  char
      __user *buffer, size_t buflen)^J{^J^Istruct request_key_auth *rka
      = key-&gt;payload.data;^J^Isize_t datalen;^J^Ilong
      ret;^J^J^Idatalen = rka-&gt;callout_len;^J^Iret = datalen;^J^J^I/*
      we can return the data as is */^J^Iif (buffer &amp;&amp; buflen
      &gt; 0) {^J^I^Iif (buflen &gt; datalen)^J^I^I^Ibuflen =
      datalen;^J^J^I^Iif (copy_to_user(buffer, rka-&gt;callout_info,
      buflen) != 0)^J^I^I^Iret = -EFAULT;^J^I}^J^J^Ireturn
      ret;^J}^J^J/*^J * Handle revocation of an authorisation token
      key.^J *^J * Called with the key sem write-locked.^J */^Jstatic
      void request_key_auth_revoke(struct key *key)^J{^J^Istruct
      request_key_auth *rka = key-&gt;payload.data;^J^J^Ikenter("{%d}",
      key-&gt;serial);^J^J^Iif (rka-&gt;cred)
      {^J^I^Iput_cred(rka-&gt;cred);^J^I^Irka-&gt;cred =
      NULL;^J^I}^J}^J^J/*^J * Destroy an instantiation authorisation
      token key.^J */^Jstatic void request_key_auth_destroy(struct key
      *key)^J{^J^Istruct request_key_auth *rka =
      key-&gt;payload.data;^J^J^Ikenter("{%d}", key-&gt;serial);^J^J^Iif
      (rka-&gt;cred) {^J^I^Iput_cred(rka-&gt;cred);^J^I^Irka-&gt;cred =
NULL;^J^I}^J^J^Ikey_put(rka-&gt;target_key);^J^Ikey_put(rka-&gt;dest_keyring);^J^Ikfree(rka-&gt;callout_info);^J^Ikfree(rka);^J}^J^J/*^J
      * Create an authorisation token for /sbin/request-key or whoever
      to gain^J * access to the caller's security data.^J */^Jstruct key
      *request_key_auth_new(struct key *target, const void
      *callout_info,^J^I^I^I^I size_t callout_len, struct key
      *dest_keyring)^J{^J^Istruct request_key_auth *rka, *irka;^J^Iconst
      struct cred *cred = current-&gt;cred;^J^Istruct key *authkey =
      NULL;^J^Ichar desc[20];^J^Iint ret;^J^J^Ikenter("%d,",
      target-&gt;serial);^J^J^I/* allocate a auth record */^J^Irka =
      kmalloc(sizeof(*rka), GFP_KERNEL);^J^Iif (!rka) {^J^I^Ikleave(" =
      -ENOMEM");^J^I^Ireturn
      ERR_PTR(-ENOMEM);^J^I}^J^Irka-&gt;callout_info =
      kmalloc(callout_len, GFP_KERNEL);^J^Iif (!rka-&gt;callout_info)
      {^J^I^Ikleave(" = -ENOMEM");^J^I^Ikfree(rka);^J^I^Ireturn
      ERR_PTR(-ENOMEM);^J^I}^J^J^I/* see if the calling process is
      already servicing the key request of^J^I * another process
      */^J^Iif (cred-&gt;request_key_auth) {^J^I^I/* it is - use that
      instantiation context here too
      */^J^I^Idown_read(&amp;cred-&gt;request_key_auth-&gt;sem);^J^J^I^I/*
      if the auth key has been revoked, then the key we're^J^I^I *
      servicing is already instantiated */^J^I^Iif
      (test_bit(KEY_FLAG_REVOKED,
      &amp;cred-&gt;request_key_auth-&gt;flags))^J^I^I^Igoto
      auth_key_revoked;^J^J^I^Iirka =
      cred-&gt;request_key_auth-&gt;payload.data;^J^I^Irka-&gt;cred =
      get_cred(irka-&gt;cred);^J^I^Irka-&gt;pid =
irka-&gt;pid;^J^J^I^Iup_read(&amp;cred-&gt;request_key_auth-&gt;sem);^J^I}^J^Ielse
      {^J^I^I/* it isn't - use this process as the context
      */^J^I^Irka-&gt;cred = get_cred(cred);^J^I^Irka-&gt;pid =
      current-&gt;pid;^J^I}^J^J^Irka-&gt;target_key =
      key_get(target);^J^Irka-&gt;dest_keyring =
      key_get(dest_keyring);^J^Imemcpy(rka-&gt;callout_info,
      callout_info, callout_len);^J^Irka-&gt;callout_len =
      callout_len;^J^J^I/* allocate the auth key */^J^Isprintf(desc,
      "%x", target-&gt;serial);^J^J^Iauthkey =
      key_alloc(&amp;key_type_request_key_auth, desc,^J^I^I^I   
      cred-&gt;fsuid, cred-&gt;fsgid, cred,^J^I^I^I    KEY_POS_VIEW |
      KEY_POS_READ | KEY_POS_SEARCH |^J^I^I^I    KEY_USR_VIEW,
      KEY_ALLOC_NOT_IN_QUOTA);^J^Iif (IS_ERR(authkey)) {^J^I^Iret =
      PTR_ERR(authkey);^J^I^Igoto error_alloc;^J^I}^J^J^I/* construct
      the auth key */^J^Iret = key_instantiate_and_link(authkey, rka, 0,
      NULL, NULL);^J^Iif (ret &lt; 0)^J^I^Igoto
      error_inst;^J^J^Ikleave(" = {%d,%d}", authkey-&gt;serial,
      atomic_read(&amp;authkey-&gt;usage));^J^Ireturn
authkey;^J^Jauth_key_revoked:^J^Iup_read(&amp;cred-&gt;request_key_auth-&gt;sem);^J^Ikfree(rka-&gt;callout_info);^J^Ikfree(rka);^J^Ikleave("=
      -EKEYREVOKED");^J^Ireturn
ERR_PTR(-EKEYREVOKED);^J^Jerror_inst:^J^Ikey_revoke(authkey);^J^Ikey_put(authkey);^Jerror_alloc:^J^Ikey_put(rka-&gt;target_key);^J^Ikey_put(rka-&gt;dest_keyring);^J^Ikfree(rka-&gt;callout_info);^J^Ikfree(rka);^J^Ikleave("=
      %d", ret);^J^Ireturn ERR_PTR(ret);^J}^J^J/*^J * Search the current
      process's keyrings for the authorisation key for^J * instantiation
      of a key.^J */^Jstruct key
      *key_get_instantiation_authkey(key_serial_t target_id)^J{^J^Ichar
      description[16];^J^Istruct keyring_search_context ctx =
      {^J^I^I.index_key.type^I^I=
      &amp;key_type_request_key_auth,^J^I^I.index_key.description^I=
      description,^J^I^I.cred^I^I^I= current_cred(),^J^I^I.match^I^I^I=
      user_match,^J^I^I.match_data^I^I= description,^J^I^I.flags^I^I^I=
      KEYRING_SEARCH_LOOKUP_DIRECT,^J^I};^J^Istruct key
      *authkey;^J^Ikey_ref_t authkey_ref;^J^J^Isprintf(description,
      "%x", target_id);^J^J^Iauthkey_ref =
      search_process_keyrings(&amp;ctx);^J^J^Iif (IS_ERR(authkey_ref))
      {^J^I^Iauthkey = ERR_CAST(authkey_ref);^J^I^Iif (authkey ==
      ERR_PTR(-EAGAIN))^J^I^I^Iauthkey = ERR_PTR(-ENOKEY);^J^I^Igoto
      error;^J^I}^J^J^Iauthkey = key_ref_to_ptr(authkey_ref);^J^Iif
      (test_bit(KEY_FLAG_REVOKED, &amp;authkey-&gt;flags))
      {^J^I^Ikey_put(authkey);^J^I^Iauthkey =
      ERR_PTR(-EKEYREVOKED);^J^I}^J^Jerror:^J^Ireturn authkey;^J}^J</samp><samp><br>
    </samp><samp>symlink error: File name too long</samp><samp><br>
    </samp><samp>lchmod (file attributes) error: Function not
      implemented</samp><samp><br>
    </samp><samp> 
      linux-amlogic-amlogic-3.14-nougat/tools/gator/daemon/k/perf_event.h
      -&gt; perf_event.3.12.h</samp><samp><br>
    </samp><samp>lchmod (file attributes) error: Function not
      implemented</samp><samp><br>
    </samp><br>
    This error happens to multiple files where the file is symlinked to
    the content of the file and not to a path !<br>
    Where should I report this bug ? openembedded ? unzip upstream ? <br>
  </body>
</html>

--------------9B8763D0DE90E79FB5C2D556--
