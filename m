Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F3BEE015DA
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 04:08:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Aug 2013 04:08:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,845,1367996400"; d="scan'208";a="279839788"
Received: from unknown (HELO helios.localnet) ([10.252.122.201])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Aug 2013 04:08:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Holger Behrens <holger.behrens@windriver.com>
Date: Fri, 09 Aug 2013 12:08:26 +0100
Message-ID: <3417102.5QeopzmKGE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1376045330-17216-8-git-send-email-holger.behrens@windriver.com>
References: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
	<1376045330-17216-8-git-send-email-holger.behrens@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, holger@windriver.com,
	genivi-meta-ivi@lists.genivi.org
Subject: Re: [meta-ivi][PATCH 8/8] dbus: merge two dbus .bbappend's into one
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
X-List-Received-Date: Fri, 09 Aug 2013 11:08:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Holger,

On Friday 09 August 2013 12:48:50 Holger Behrens wrote:
> There were two dbus bbappends (recipes-core-ivi/dbus/dbus_1.6.8.bbappend
> and recipes-extended/common-api/dbus_1.6.8.bbappend). This have been
> merged into the first for clarity.
> 
> In case a user won't need GENIVI AFBUS or GENIVI COMMON-API support
> the related patch should now be easy to identify and, if required,
> easy to disable.
> 
> Signed-off-by: Holger Behrens <holger.behrens@windriver.com>
> ---
>  ...Message-add-support-for-custom-marshaling.patch |  267
> ++++++++++++++++++++ recipes-core-ivi/dbus/dbus_1.6.10.bbappend         |  
> 15 +-
>  ...Message-add-support-for-custom-marshaling.patch |  267
> -------------------- recipes-extended/common-api/dbus_1.6.10.bbappend   |  
>  5 -
>  4 files changed, 280 insertions(+), 274 deletions(-)
>  create mode 100644
> recipes-core-ivi/dbus/dbus/dbus-DBusMessage-add-support-for-custom-marshali
> ng.patch delete mode 100644
> recipes-extended/common-api/dbus/dbus-DBusMessage-add-support-for-custom-ma
> rshaling.patch delete mode 100644
> recipes-extended/common-api/dbus_1.6.10.bbappend
> 
> diff --git
> a/recipes-core-ivi/dbus/dbus/dbus-DBusMessage-add-support-for-custom-marsha
> ling.patch
> b/recipes-core-ivi/dbus/dbus/dbus-DBusMessage-add-support-for-custom-marsha
> ling.patch new file mode 100644
> index 0000000..5f225f3
> --- /dev/null
> +++
> b/recipes-core-ivi/dbus/dbus/dbus-DBusMessage-add-support-for-custom-marsha
> ling.patch @@ -0,0 +1,267 @@
> +From 467a2e307462b02865b35397c572b6048c2934e2 Mon Sep 17 00:00:00 2001
> +From: Aleksandar Kanchev <kanchev@itestra.com>
> +Date: Mon, 9 Jul 2012 18:09:04 +0200
> +Subject: [PATCH] DBusMessage: add support for custom marshaling
> +
> +Add functions to support querying and manipulating the message body and
> +signature. This is useful for code generators, which can generate custom
> +marshaling functions based on a given IDL. Those functions tend to be
> +optimized and faster than the generic iterator based marshaling.
> +---
> + dbus/dbus-message.c |  143
> +++++++++++++++++++++++++++++++++++---------------- + dbus/dbus-message.h |
>   13 +++++
> + dbus/dbus-string.c  |   16 ++++++
> + dbus/dbus-string.h  |    4 ++
> + 4 files changed, 132 insertions(+), 44 deletions(-)
> +
> +diff --git a/dbus/dbus-message.c b/dbus/dbus-message.c
> +index 24ef5ac..fbacfba 100644
> +--- a/dbus/dbus-message.c
> ++++ b/dbus/dbus-message.c
> +@@ -356,50 +356,6 @@ set_or_delete_string_field (DBusMessage *message,
> +                                          &value);
> + }
> +
> +-#if 0
> +-/* Probably we don't need to use this */
> +-/**
> +- * Sets the signature of the message, i.e. the arguments in the
> +- * message payload. The signature includes only "in" arguments for
> +- * #DBUS_MESSAGE_TYPE_METHOD_CALL and only "out" arguments for
> +- * #DBUS_MESSAGE_TYPE_METHOD_RETURN, so is slightly different from
> +- * what you might expect (it does not include the signature of the
> +- * entire C++-style method).
> +- *
> +- * The signature is a string made up of type codes such as
> +- * #DBUS_TYPE_INT32. The string is terminated with nul (nul is also
> +- * the value of #DBUS_TYPE_INVALID). The macros such as
> +- * #DBUS_TYPE_INT32 evaluate to integers; to assemble a signature you
> +- * may find it useful to use the string forms, such as
> +- * #DBUS_TYPE_INT32_AS_STRING.
> +- *
> +- * An "unset" or #NULL signature is considered the same as an empty
> +- * signature. In fact dbus_message_get_signature() will never return
> +- * #NULL.
> +- *
> +- * @param message the message
> +- * @param signature the type signature or #NULL to unset
> +- * @returns #FALSE if no memory
> +- */
> +-static dbus_bool_t
> +-_dbus_message_set_signature (DBusMessage *message,
> +-                             const char  *signature)
> +-{
> +-  _dbus_return_val_if_fail (message != NULL, FALSE);
> +-  _dbus_return_val_if_fail (!message->locked, FALSE);
> +-  _dbus_return_val_if_fail (signature == NULL ||
> +-                            _dbus_check_is_valid_signature (signature));
> +-  /* can't delete the signature if you have a message body */
> +-  _dbus_return_val_if_fail (_dbus_string_get_length (&message->body) == 0
> || +-                            signature != NULL);
> +-
> +-  return set_or_delete_string_field (message,
> +-                                     DBUS_HEADER_FIELD_SIGNATURE,
> +-                                     DBUS_TYPE_SIGNATURE,
> +-                                     signature);
> +-}
> +-#endif
> +-
> + /* Message Cache
> +  *
> +  * We cache some DBusMessage to reduce the overhead of allocating
> +@@ -3370,6 +3326,47 @@ dbus_message_get_sender (DBusMessage *message)
> + }
> +
> + /**
> ++ * Sets the signature of the message, i.e. the arguments in the
> ++ * message payload. The signature includes only "in" arguments for
> ++ * #DBUS_MESSAGE_TYPE_METHOD_CALL and only "out" arguments for
> ++ * #DBUS_MESSAGE_TYPE_METHOD_RETURN, so is slightly different from
> ++ * what you might expect (it does not include the signature of the
> ++ * entire C++-style method).
> ++ *
> ++ * The signature is a string made up of type codes such as
> ++ * #DBUS_TYPE_INT32. The string is terminated with nul (nul is also
> ++ * the value of #DBUS_TYPE_INVALID). The macros such as
> ++ * #DBUS_TYPE_INT32 evaluate to integers; to assemble a signature you
> ++ * may find it useful to use the string forms, such as
> ++ * #DBUS_TYPE_INT32_AS_STRING.
> ++ *
> ++ * An "unset" or #NULL signature is considered the same as an empty
> ++ * signature. In fact dbus_message_get_signature() will never return
> ++ * #NULL.
> ++ *
> ++ * @param message the message
> ++ * @param signature the type signature or #NULL to unset
> ++ * @returns #FALSE if no memory
> ++ */
> ++dbus_bool_t
> ++dbus_message_set_signature (DBusMessage *message,
> ++                            const char  *signature)
> ++{
> ++  _dbus_return_val_if_fail (message != NULL, FALSE);
> ++  _dbus_return_val_if_fail (!message->locked, FALSE);
> ++  _dbus_return_val_if_fail (signature == NULL ||
> ++                            _dbus_check_is_valid_signature (signature),
> FALSE); ++  /* can't delete the signature if you have a message body */
> ++  _dbus_return_val_if_fail (_dbus_string_get_length (&message->body) == 0
> || ++                            signature != NULL, FALSE);
> ++
> ++  return set_or_delete_string_field (message,
> ++                                     DBUS_HEADER_FIELD_SIGNATURE,
> ++                                     DBUS_TYPE_SIGNATURE,
> ++                                     signature);
> ++}
> ++
> ++/**
> +  * Gets the type signature of the message, i.e. the arguments in the
> +  * message payload. The signature includes only "in" arguments for
> +  * #DBUS_MESSAGE_TYPE_METHOD_CALL and only "out" arguments for
> +@@ -4519,6 +4516,64 @@ dbus_message_type_to_string (int type)
> + }
> +
> + /**
> ++ * Returns pointer to the buffer used to store the message body.
> ++ *
> ++ * @param message the message
> ++ * @return pointer to the message body memory
> ++ */
> ++char*
> ++dbus_message_get_body (DBusMessage *message) {
> ++  _dbus_return_val_if_fail (message != NULL, NULL);
> ++
> ++  return _dbus_string_get_data(&(message->body));
> ++}
> ++
> ++/**
> ++ * Adjust the length of the message body buffer. The memory will be
> reallocated ++ * if the new length is bigger than the already allocated
> size.
> ++ *
> ++ * @see dbus_message_get_body_allocated
> ++ * @param message the message
> ++ * @param length the new length of the body
> ++ * @return #TRUE if successful
> ++ */
> ++dbus_bool_t
> ++dbus_message_set_body_length (DBusMessage *message,
> ++                              int length) {
> ++  _dbus_return_val_if_fail (message != NULL, FALSE);
> ++  _dbus_return_val_if_fail (length >= 0, FALSE);
> ++
> ++  return _dbus_string_set_length(&(message->body), length);
> ++}
> ++
> ++/**
> ++ * Gets the length of the message body buffer.
> ++ *
> ++ * @param message the message
> ++ * @param length the new length of the body
> ++ * @return the length of the body buffer
> ++ */
> ++int
> ++dbus_message_get_body_length (DBusMessage *message) {
> ++  _dbus_return_val_if_fail (message != NULL, 0);
> ++
> ++  return _dbus_string_get_length(&(message->body));
> ++}
> ++
> ++/**
> ++ * Gets the allocated memory size used to hold the message body.
> ++ *
> ++ * @param message the message
> ++ * @return size of the allocated message body memory
> ++ */
> ++int
> ++dbus_message_get_body_allocated (DBusMessage *message) {
> ++  _dbus_return_val_if_fail (message != NULL, 0);
> ++
> ++  return _dbus_string_get_allocated(&(message->body));
> ++}
> ++
> ++/**
> +  * Turn a DBusMessage into the marshalled form as described in the D-Bus
> +  * specification.
> +  *
> +diff --git a/dbus/dbus-message.h b/dbus/dbus-message.h
> +index 5500492..55388ac 100644
> +--- a/dbus/dbus-message.h
> ++++ b/dbus/dbus-message.h
> +@@ -138,6 +138,9 @@ dbus_bool_t   dbus_message_set_sender      
> (DBusMessage   *message, + DBUS_EXPORT
> + const char*   dbus_message_get_sender       (DBusMessage   *message);
> + DBUS_EXPORT
> ++dbus_bool_t   dbus_message_set_signature    (DBusMessage   *message,
> ++                                             const char    *signature);
> ++DBUS_EXPORT
> + const char*   dbus_message_get_signature    (DBusMessage   *message);
> + DBUS_EXPORT
> + void          dbus_message_set_no_reply     (DBusMessage   *message,
> +@@ -264,6 +267,16 @@ void        dbus_message_iter_abandon_container 
> (DBusMessageIter *iter, +                                                  
> DBusMessageIter *sub); +
> + DBUS_EXPORT
> ++char*       dbus_message_get_body           (DBusMessage   *message);
> ++DBUS_EXPORT
> ++dbus_bool_t dbus_message_set_body_length    (DBusMessage   *message,
> ++                                             int length);
> ++DBUS_EXPORT
> ++int         dbus_message_get_body_length    (DBusMessage   *message);
> ++DBUS_EXPORT
> ++int         dbus_message_get_body_allocated (DBusMessage   *message);
> ++
> ++DBUS_EXPORT
> + void dbus_message_lock    (DBusMessage  *message);
> +
> + DBUS_EXPORT
> +diff --git a/dbus/dbus-string.c b/dbus/dbus-string.c
> +index e2eb93b..d8628ba 100644
> +--- a/dbus/dbus-string.c
> ++++ b/dbus/dbus-string.c
> +@@ -848,6 +848,22 @@ _dbus_string_get_length (const DBusString  *str)
> + }
> + #endif /* !_dbus_string_get_length */
> +
> ++/* Only have the function if we don't have the macro */
> ++#ifndef _dbus_string_get_allocated
> ++/**
> ++ * Gets the allocated length of a string (not including nul termination).
> ++ *
> ++ * @returns the allocated length.
> ++ */
> ++int
> ++_dbus_string_get_allocated(const DBusString  *str)
> ++{
> ++  DBUS_CONST_STRING_PREAMBLE (str);
> ++
> ++  return real->allocated;
> ++}
> ++#endif /* !_dbus_string_get_allocated */
> ++
> + /**
> +  * Makes a string longer by the given number of bytes.  Checks whether
> +  * adding additional_length to the current length would overflow an
> +diff --git a/dbus/dbus-string.h b/dbus/dbus-string.h
> +index 2f1ed31..490aea6 100644
> +--- a/dbus/dbus-string.h
> ++++ b/dbus/dbus-string.h
> +@@ -62,6 +62,7 @@ struct DBusString
> +  */
> + #define _dbus_string_get_data(s) ((char*)(((DBusString*)(s))->dummy1))
> + #define _dbus_string_get_length(s) (((DBusString*)(s))->dummy2)
> ++#define _dbus_string_get_allocated(s) (((DBusString*)(s))->dummy3 -
> _DBUS_STRING_ALLOCATION_PADDING) + #define _dbus_string_set_byte(s, i, b)
> ((((unsigned char*)(((DBusString*)(s))->dummy1))[(i)]) = (unsigned char)
> (b)) + #define _dbus_string_get_byte(s, i) (((const unsigned
> char*)(((DBusString*)(s))->dummy1))[(i)]) + #define
> _dbus_string_get_const_data(s) ((const char*)(((DBusString*)(s))->dummy1))
> +@@ -131,6 +132,9 @@ void          _dbus_string_copy_to_buffer_with_nul
> (const DBusString  *str, + #ifndef _dbus_string_get_length
> + int           _dbus_string_get_length            (const DBusString  *str);
> + #endif /* !_dbus_string_get_length */
> ++#ifndef _dbus_string_get_allocated
> ++int           _dbus_string_get_allocated         (const DBusString  *str);
> ++#endif /* !_dbus_string_get_allocated */
> +
> + dbus_bool_t   _dbus_string_lengthen              (DBusString        *str,
> +                                                   int               
> additional_length); +--
> +1.7.10.2
> +
> diff --git a/recipes-core-ivi/dbus/dbus_1.6.10.bbappend
> b/recipes-core-ivi/dbus/dbus_1.6.10.bbappend index 5afcdba..685d98c 100644
> --- a/recipes-core-ivi/dbus/dbus_1.6.10.bbappend
> +++ b/recipes-core-ivi/dbus/dbus_1.6.10.bbappend
> @@ -1,5 +1,16 @@
>  FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -PRINC := "${@int(PRINC) + 2}"
> +PRINC := "${@int(PRINC) + 3}"
> 
> -SRC_URI += "file://dbus_1.6-add-afbus-support.patch"
> +# add support for GENIVI AF_Bus D-Bus Optimization
> +# - http://projects.genivi.org/afbus-dbus-optimization/
> +SRC_URI_afbus = "file://dbus_1.6-add-afbus-support.patch"
> +
> +# add support for GENIVI CommonAPI D-Bus runtime
> +# - http://projects.genivi.org/commonapi/
> +SRC_URI_commonapi =
> "file://dbus-DBusMessage-add-support-for-custom-marshaling.patch" +
> +SRC_URI_append = "\
> +    ${SRC_URI_afbus} \
> +    ${SRC_URI_commonapi} \
> +"

I'd suggest not using lowercase afbus/commonapi here because it makes these 
look like overrides.

Cheers,
Paul


