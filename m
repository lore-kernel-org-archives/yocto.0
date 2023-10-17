Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987B5CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 01:00:14 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.197227.1697504405628469215
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 18:00:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Imc3My+9;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1c9d7a98abbso33716065ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 18:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697504405; x=1698109205; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OgNwkJyWRJPUDZ01dcnpN+k7o+DeBYg3IytdmknfIJo=;
        b=Imc3My+9w+p8LCS0WkUlvy2dy7W1eJYpSX5t8MdSpKJKUMyd9r7ufxIEqGR4xdtV/s
         gTOD8Z3UNIzMfqr1pmpDMJOBVb5UUCpWO3jXb4wGZAYMob7Y3QdlJukKnBF+pkBuYO1U
         o1qYIbisvSC3gYVdTS7zk7T/1eMBM3bF16dSwD2PoUc9joe6oHDY/OZCiW21HhyquDWC
         KPRpSmAMQPhp/Vh4Tku9SG48Gc2pkg++sfefSX0eTm9NTBHWho7oglB/h0jXHxftXT3X
         wLaicnNcsskfjSUkJiKOP/wUEl0D2Jy8a7cdhbjjemcG7wY2Iu454XU3T0r6zP0CWDf/
         UxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697504405; x=1698109205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OgNwkJyWRJPUDZ01dcnpN+k7o+DeBYg3IytdmknfIJo=;
        b=msv5npW814Hh31Ti5u4h57yyzcEejSRMslDC2tY0v6e7ot/uCQ6+zfrTc5cvk3KPQe
         LLslYF34PE66apkoOJ+8VY6rhEj7na6z1wK1KeuE9eAYniefbl9r1lrJW0Fi5Mv3lgMo
         c6DkEStX8HE4WD6YVUDeG+giqAwLxOC2ZiSAYktzar0J3rvX6Xl/MDrPQP9TWloJg7IN
         S0Y5Z6fs0CT+P05KuO9qe3ZEhEA1wCW3oG46Xlgh2G/Kx4qPSVzTBARuL8TmYHdEQLnJ
         bagm59CbaY0zqxQZW467I9M5J/vixSeehtqCOz587iEbqB29RCb4cEFdh3k6nWi8/FC5
         DhfQ==
X-Gm-Message-State: AOJu0YxIowhNeR82t757YXeN8jiz4dwGYVhOJ40gQx44GbWUE1OGMQVr
	hyU3CTgSXO/5PpCNpG8keXLzeelj0t34Rg==
X-Google-Smtp-Source: AGHT+IFIb+c2rrZ+p0Ghk2xffBbUeYTFDQSRzpF/aS7U9cMn0om+2rvtTTXEJWLxiEBh+ouzuDxiQA==
X-Received: by 2002:a17:902:e54a:b0:1c7:7b27:f9a9 with SMTP id n10-20020a170902e54a00b001c77b27f9a9mr1005971plf.59.1697504403136;
        Mon, 16 Oct 2023 18:00:03 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:ab5b:2a7b:aba2:aa8c])
        by smtp.gmail.com with ESMTPSA id f6-20020a170902e98600b001c60a548331sm210879plb.304.2023.10.16.18.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 18:00:02 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 1/4] jquery: upgrade 3.4.1 -> 3.7.1
Date: Mon, 16 Oct 2023 17:59:20 -0700
Message-Id: <20231017005921.2618459-2-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017005921.2618459-1-tim.orling@konsulko.com>
References: <20231017005921.2618459-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 01:00:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61359

Use minified version in templates/base.html

Fixes some vulernabilities:
https://nvd.nist.gov/vuln/search/results?adv_search=3Dtrue&isCpeNameSearch=
=3Dtrue&query=3Dcpe%3A2.3%3Aa%3Ajquery%3Ajquery%3A3.4.1%3A*%3A*%3A*%3A*%3An=
ode.js%3A*%3A*

CVE: CVE-2020-23064
CVE: CVE-2020-11022
CVE: CVE-2020-11023

For full changelog see:
https://github.com/jquery/jquery/compare/3.4.1...3.7.1

License-Update: Copyright OpenJS Foundation (from JS Foundation)

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/static/LICENSE.jquery              |   18 +-
 .../js/{jquery-3.4.1.js =3D> jquery-3.7.1.js}   | 2926 +++++++++--------
 layerindex/static/js/jquery-3.7.1.min.js      |    2 +
 templates/base.html                           |    2 +-
 4 files changed, 1526 insertions(+), 1422 deletions(-)
 rename layerindex/static/js/{jquery-3.4.1.js =3D> jquery-3.7.1.js} (82%)
 create mode 100644 layerindex/static/js/jquery-3.7.1.min.js

diff --git a/layerindex/static/LICENSE.jquery b/layerindex/static/LICENSE.j=
query
index e4e5e00..f642c3f 100644
--- a/layerindex/static/LICENSE.jquery
+++ b/layerindex/static/LICENSE.jquery
@@ -1,13 +1,4 @@
-Copyright JS Foundation and other contributors, https://js.foundation/
-
-This software consists of voluntary contributions made by many
-individuals. For exact contribution history, see the revision history
-available at https://github.com/jquery/jquery
-
-The following license applies to all parts of this software except as
-documented below:
-
-=3D=3D=3D=3D
+Copyright OpenJS Foundation and other contributors, https://openjsf.org/
=20
 Permission is hereby granted, free of charge, to any person obtaining
 a copy of this software and associated documentation files (the
@@ -27,10 +18,3 @@ NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRI=
GHT HOLDERS BE
 LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-
-=3D=3D=3D=3D
-
-All files located in the node_modules and external directories are
-externally maintained libraries used by this software which have their
-own licenses; we recommend you read them, as their terms may differ from
-the terms above.
diff --git a/layerindex/static/js/jquery-3.4.1.js b/layerindex/static/js/jq=
uery-3.7.1.js
similarity index 82%
rename from layerindex/static/js/jquery-3.4.1.js
rename to layerindex/static/js/jquery-3.7.1.js
index 773ad95..1a86433 100644
--- a/layerindex/static/js/jquery-3.4.1.js
+++ b/layerindex/static/js/jquery-3.7.1.js
@@ -1,15 +1,12 @@
 /*!
- * jQuery JavaScript Library v3.4.1
+ * jQuery JavaScript Library v3.7.1
  * https://jquery.com/
  *
- * Includes Sizzle.js
- * https://sizzlejs.com/
- *
- * Copyright JS Foundation and other contributors
+ * Copyright OpenJS Foundation and other contributors
  * Released under the MIT license
  * https://jquery.org/license
  *
- * Date: 2019-05-01T21:04Z
+ * Date: 2023-08-28T13:37Z
  */
 ( function( global, factory ) {
=20
@@ -23,7 +20,7 @@
 		// (such as Node.js), expose a factory as module.exports.
 		// This accentuates the need for the creation of a real `window`.
 		// e.g. var jQuery =3D require("jquery")(window);
-		// See ticket #14549 for more info.
+		// See ticket trac-14549 for more info.
 		module.exports =3D global.document ?
 			factory( global, true ) :
 			function( w ) {
@@ -47,13 +44,16 @@
=20
 var arr =3D [];
=20
-var document =3D window.document;
-
 var getProto =3D Object.getPrototypeOf;
=20
 var slice =3D arr.slice;
=20
-var concat =3D arr.concat;
+var flat =3D arr.flat ? function( array ) {
+	return arr.flat.call( array );
+} : function( array ) {
+	return arr.concat.apply( [], array );
+};
+
=20
 var push =3D arr.push;
=20
@@ -73,12 +73,16 @@ var support =3D {};
=20
 var isFunction =3D function isFunction( obj ) {
=20
-      // Support: Chrome <=3D57, Firefox <=3D52
-      // In some browsers, typeof returns "function" for HTML <object> ele=
ments
-      // (i.e., `typeof document.createElement( "object" ) =3D=3D=3D "func=
tion"`).
-      // We don't want to classify *any* DOM node as a function.
-      return typeof obj =3D=3D=3D "function" && typeof obj.nodeType !=3D=
=3D "number";
-  };
+		// Support: Chrome <=3D57, Firefox <=3D52
+		// In some browsers, typeof returns "function" for HTML <object> elements
+		// (i.e., `typeof document.createElement( "object" ) =3D=3D=3D "function=
"`).
+		// We don't want to classify *any* DOM node as a function.
+		// Support: QtWeb <=3D3.8.5, WebKit <=3D534.34, wkhtmltopdf tool <=3D0.1=
2.5
+		// Plus for old WebKit, typeof returns "function" for HTML collections
+		// (e.g., `typeof document.getElementsByTagName("div") =3D=3D=3D "functi=
on"`). (gh-4756)
+		return typeof obj =3D=3D=3D "function" && typeof obj.nodeType !=3D=3D "n=
umber" &&
+			typeof obj.item !=3D=3D "function";
+	};
=20
=20
 var isWindow =3D function isWindow( obj ) {
@@ -86,6 +90,8 @@ var isWindow =3D function isWindow( obj ) {
 	};
=20
=20
+var document =3D window.document;
+
=20
=20
 	var preservedScriptAttributes =3D {
@@ -141,8 +147,9 @@ function toType( obj ) {
=20
=20
=20
-var
-	version =3D "3.4.1",
+var version =3D "3.7.1",
+
+	rhtmlSuffix =3D /HTML$/i,
=20
 	// Define a local copy of jQuery
 	jQuery =3D function( selector, context ) {
@@ -150,11 +157,7 @@ var
 		// The jQuery object is actually just the init constructor 'enhanced'
 		// Need init if jQuery is called (just allow error to be thrown if not i=
ncluded)
 		return new jQuery.fn.init( selector, context );
-	},
-
-	// Support: Android <=3D4.0 only
-	// Make sure we trim BOM and NBSP
-	rtrim =3D /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
+	};
=20
 jQuery.fn =3D jQuery.prototype =3D {
=20
@@ -220,6 +223,18 @@ jQuery.fn =3D jQuery.prototype =3D {
 		return this.eq( -1 );
 	},
=20
+	even: function() {
+		return this.pushStack( jQuery.grep( this, function( _elem, i ) {
+			return ( i + 1 ) % 2;
+		} ) );
+	},
+
+	odd: function() {
+		return this.pushStack( jQuery.grep( this, function( _elem, i ) {
+			return i % 2;
+		} ) );
+	},
+
 	eq: function( i ) {
 		var len =3D this.length,
 			j =3D +i + ( i < 0 ? len : 0 );
@@ -353,9 +368,10 @@ jQuery.extend( {
 		return true;
 	},
=20
-	// Evaluates a script in a global context
-	globalEval: function( code, options ) {
-		DOMEval( code, { nonce: options && options.nonce } );
+	// Evaluates a script in a provided context; falls back to the global one
+	// if not specified.
+	globalEval: function( code, options, doc ) {
+		DOMEval( code, { nonce: options && options.nonce }, doc );
 	},
=20
 	each: function( obj, callback ) {
@@ -379,11 +395,36 @@ jQuery.extend( {
 		return obj;
 	},
=20
-	// Support: Android <=3D4.0 only
-	trim: function( text ) {
-		return text =3D=3D null ?
-			"" :
-			( text + "" ).replace( rtrim, "" );
+
+	// Retrieve the text value of an array of DOM nodes
+	text: function( elem ) {
+		var node,
+			ret =3D "",
+			i =3D 0,
+			nodeType =3D elem.nodeType;
+
+		if ( !nodeType ) {
+
+			// If no nodeType, this is expected to be an array
+			while ( ( node =3D elem[ i++ ] ) ) {
+
+				// Do not traverse comment nodes
+				ret +=3D jQuery.text( node );
+			}
+		}
+		if ( nodeType =3D=3D=3D 1 || nodeType =3D=3D=3D 11 ) {
+			return elem.textContent;
+		}
+		if ( nodeType =3D=3D=3D 9 ) {
+			return elem.documentElement.textContent;
+		}
+		if ( nodeType =3D=3D=3D 3 || nodeType =3D=3D=3D 4 ) {
+			return elem.nodeValue;
+		}
+
+		// Do not include comment or processing instruction nodes
+
+		return ret;
 	},
=20
 	// results is for internal usage only
@@ -394,7 +435,7 @@ jQuery.extend( {
 			if ( isArrayLike( Object( arr ) ) ) {
 				jQuery.merge( ret,
 					typeof arr =3D=3D=3D "string" ?
-					[ arr ] : arr
+						[ arr ] : arr
 				);
 			} else {
 				push.call( ret, arr );
@@ -408,6 +449,15 @@ jQuery.extend( {
 		return arr =3D=3D null ? -1 : indexOf.call( arr, elem, i );
 	},
=20
+	isXMLDoc: function( elem ) {
+		var namespace =3D elem && elem.namespaceURI,
+			docElem =3D elem && ( elem.ownerDocument || elem ).documentElement;
+
+		// Assume HTML when documentElement doesn't yet exist, such as inside
+		// document fragments.
+		return !rhtmlSuffix.test( namespace || docElem && docElem.nodeName || "H=
TML" );
+	},
+
 	// Support: Android <=3D4.0 only, PhantomJS 1 only
 	// push.apply(_, arraylike) throws on ancient WebKit
 	merge: function( first, second ) {
@@ -472,7 +522,7 @@ jQuery.extend( {
 		}
=20
 		// Flatten any nested arrays
-		return concat.apply( [], ret );
+		return flat( ret );
 	},
=20
 	// A global GUID counter for objects
@@ -489,9 +539,9 @@ if ( typeof Symbol =3D=3D=3D "function" ) {
=20
 // Populate the class2type map
 jQuery.each( "Boolean Number String Function Array Date RegExp Object Erro=
r Symbol".split( " " ),
-function( i, name ) {
-	class2type[ "[object " + name + "]" ] =3D name.toLowerCase();
-} );
+	function( _i, name ) {
+		class2type[ "[object " + name + "]" ] =3D name.toLowerCase();
+	} );
=20
 function isArrayLike( obj ) {
=20
@@ -509,44 +559,98 @@ function isArrayLike( obj ) {
 	return type =3D=3D=3D "array" || length =3D=3D=3D 0 ||
 		typeof length =3D=3D=3D "number" && length > 0 && ( length - 1 ) in obj;
 }
-var Sizzle =3D
-/*!
- * Sizzle CSS Selector Engine v2.3.4
- * https://sizzlejs.com/
- *
- * Copyright JS Foundation and other contributors
- * Released under the MIT license
- * https://js.foundation/
- *
- * Date: 2019-04-08
- */
-(function( window ) {
+
+
+function nodeName( elem, name ) {
+
+	return elem.nodeName && elem.nodeName.toLowerCase() =3D=3D=3D name.toLowe=
rCase();
+
+}
+var pop =3D arr.pop;
+
+
+var sort =3D arr.sort;
+
+
+var splice =3D arr.splice;
+
+
+var whitespace =3D "[\\x20\\t\\r\\n\\f]";
+
+
+var rtrimCSS =3D new RegExp(
+	"^" + whitespace + "+|((?:^|[^\\\\])(?:\\\\.)*)" + whitespace + "+$",
+	"g"
+);
+
+
+
+
+// Note: an element does not contain itself
+jQuery.contains =3D function( a, b ) {
+	var bup =3D b && b.parentNode;
+
+	return a =3D=3D=3D bup || !!( bup && bup.nodeType =3D=3D=3D 1 && (
+
+		// Support: IE 9 - 11+
+		// IE doesn't have `contains` on SVG.
+		a.contains ?
+			a.contains( bup ) :
+			a.compareDocumentPosition && a.compareDocumentPosition( bup ) & 16
+	) );
+};
+
+
+
+
+// CSS string/identifier serialization
+// https://drafts.csswg.org/cssom/#common-serializing-idioms
+var rcssescape =3D /([\0-\x1f\x7f]|^-?\d)|^-$|[^\x80-\uFFFF\w-]/g;
+
+function fcssescape( ch, asCodePoint ) {
+	if ( asCodePoint ) {
+
+		// U+0000 NULL becomes U+FFFD REPLACEMENT CHARACTER
+		if ( ch =3D=3D=3D "\0" ) {
+			return "\uFFFD";
+		}
+
+		// Control characters and (dependent upon position) numbers get escaped =
as code points
+		return ch.slice( 0, -1 ) + "\\" + ch.charCodeAt( ch.length - 1 ).toStrin=
g( 16 ) + " ";
+	}
+
+	// Other potentially-special ASCII characters get backslash-escaped
+	return "\\" + ch;
+}
+
+jQuery.escapeSelector =3D function( sel ) {
+	return ( sel + "" ).replace( rcssescape, fcssescape );
+};
+
+
+
+
+var preferredDoc =3D document,
+	pushNative =3D push;
+
+( function() {
=20
 var i,
-	support,
 	Expr,
-	getText,
-	isXML,
-	tokenize,
-	compile,
-	select,
 	outermostContext,
 	sortInput,
 	hasDuplicate,
+	push =3D pushNative,
=20
 	// Local document vars
-	setDocument,
 	document,
-	docElem,
+	documentElement,
 	documentIsHTML,
 	rbuggyQSA,
-	rbuggyMatches,
 	matches,
-	contains,
=20
 	// Instance-specific data
-	expando =3D "sizzle" + 1 * new Date(),
-	preferredDoc =3D window.document,
+	expando =3D jQuery.expando,
 	dirruns =3D 0,
 	done =3D 0,
 	classCache =3D createCache(),
@@ -560,173 +664,145 @@ var i,
 		return 0;
 	},
=20
-	// Instance methods
-	hasOwn =3D ({}).hasOwnProperty,
-	arr =3D [],
-	pop =3D arr.pop,
-	push_native =3D arr.push,
-	push =3D arr.push,
-	slice =3D arr.slice,
-	// Use a stripped-down indexOf as it's faster than native
-	// https://jsperf.com/thor-indexof-vs-for/5
-	indexOf =3D function( list, elem ) {
-		var i =3D 0,
-			len =3D list.length;
-		for ( ; i < len; i++ ) {
-			if ( list[i] =3D=3D=3D elem ) {
-				return i;
-			}
-		}
-		return -1;
-	},
-
-	booleans =3D "checked|selected|async|autofocus|autoplay|controls|defer|di=
sabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",
+	booleans =3D "checked|selected|async|autofocus|autoplay|controls|defer|di=
sabled|hidden|ismap|" +
+		"loop|multiple|open|readonly|required|scoped",
=20
 	// Regular expressions
=20
-	// http://www.w3.org/TR/css3-selectors/#whitespace
-	whitespace =3D "[\\x20\\t\\r\\n\\f]",
-
-	// http://www.w3.org/TR/CSS21/syndata.html#value-def-identifier
-	identifier =3D "(?:\\\\.|[\\w-]|[^\0-\\xa0])+",
+	// https://www.w3.org/TR/css-syntax-3/#ident-token-diagram
+	identifier =3D "(?:\\\\[\\da-fA-F]{1,6}" + whitespace +
+		"?|\\\\[^\\r\\n\\f]|[\\w-]|[^\0-\\x7f])+",
=20
-	// Attribute selectors: http://www.w3.org/TR/selectors/#attribute-selecto=
rs
+	// Attribute selectors: https://www.w3.org/TR/selectors/#attribute-select=
ors
 	attributes =3D "\\[" + whitespace + "*(" + identifier + ")(?:" + whitespa=
ce +
+
 		// Operator (capture 2)
 		"*([*^$|!~]?=3D)" + whitespace +
+
 		// "Attribute values must be CSS identifiers [capture 5] or strings [cap=
ture 3 or capture 4]"
-		"*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + identifier =
+ "))|)" + whitespace +
-		"*\\]",
+		"*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + identifier =
+ "))|)" +
+		whitespace + "*\\]",
=20
 	pseudos =3D ":(" + identifier + ")(?:\\((" +
+
 		// To reduce the number of selectors needing tokenize in the preFilter, =
prefer arguments:
 		// 1. quoted (capture 3; capture 4 or capture 5)
 		"('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|" +
+
 		// 2. simple (capture 6)
 		"((?:\\\\.|[^\\\\()[\\]]|" + attributes + ")*)|" +
+
 		// 3. anything else (capture 2)
 		".*" +
 		")\\)|)",
=20
 	// Leading and non-escaped trailing whitespace, capturing some non-whites=
pace characters preceding the latter
 	rwhitespace =3D new RegExp( whitespace + "+", "g" ),
-	rtrim =3D new RegExp( "^" + whitespace + "+|((?:^|[^\\\\])(?:\\\\.)*)" + =
whitespace + "+$", "g" ),
=20
 	rcomma =3D new RegExp( "^" + whitespace + "*," + whitespace + "*" ),
-	rcombinators =3D new RegExp( "^" + whitespace + "*([>+~]|" + whitespace +=
 ")" + whitespace + "*" ),
+	rleadingCombinator =3D new RegExp( "^" + whitespace + "*([>+~]|" + whites=
pace + ")" +
+		whitespace + "*" ),
 	rdescend =3D new RegExp( whitespace + "|>" ),
=20
 	rpseudo =3D new RegExp( pseudos ),
 	ridentifier =3D new RegExp( "^" + identifier + "$" ),
=20
 	matchExpr =3D {
-		"ID": new RegExp( "^#(" + identifier + ")" ),
-		"CLASS": new RegExp( "^\\.(" + identifier + ")" ),
-		"TAG": new RegExp( "^(" + identifier + "|[*])" ),
-		"ATTR": new RegExp( "^" + attributes ),
-		"PSEUDO": new RegExp( "^" + pseudos ),
-		"CHILD": new RegExp( "^:(only|first|last|nth|nth-last)-(child|of-type)(?=
:\\(" + whitespace +
-			"*(even|odd|(([+-]|)(\\d*)n|)" + whitespace + "*(?:([+-]|)" + whitespac=
e +
-			"*(\\d+)|))" + whitespace + "*\\)|)", "i" ),
-		"bool": new RegExp( "^(?:" + booleans + ")$", "i" ),
+		ID: new RegExp( "^#(" + identifier + ")" ),
+		CLASS: new RegExp( "^\\.(" + identifier + ")" ),
+		TAG: new RegExp( "^(" + identifier + "|[*])" ),
+		ATTR: new RegExp( "^" + attributes ),
+		PSEUDO: new RegExp( "^" + pseudos ),
+		CHILD: new RegExp(
+			"^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" +
+				whitespace + "*(even|odd|(([+-]|)(\\d*)n|)" + whitespace + "*(?:([+-]|=
)" +
+				whitespace + "*(\\d+)|))" + whitespace + "*\\)|)", "i" ),
+		bool: new RegExp( "^(?:" + booleans + ")$", "i" ),
+
 		// For use in libraries implementing .is()
 		// We use this for POS matching in `select`
-		"needsContext": new RegExp( "^" + whitespace + "*[>+~]|:(even|odd|eq|gt|=
lt|nth|first|last)(?:\\(" +
-			whitespace + "*((?:-\\d)?\\d*)" + whitespace + "*\\)|)(?=3D[^-]|$)", "i=
" )
+		needsContext: new RegExp( "^" + whitespace +
+			"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + whitespace +
+			"*((?:-\\d)?\\d*)" + whitespace + "*\\)|)(?=3D[^-]|$)", "i" )
 	},
=20
-	rhtml =3D /HTML$/i,
 	rinputs =3D /^(?:input|select|textarea|button)$/i,
 	rheader =3D /^h\d$/i,
=20
-	rnative =3D /^[^{]+\{\s*\[native \w/,
-
 	// Easily-parseable/retrievable ID or TAG or CLASS selectors
 	rquickExpr =3D /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
=20
 	rsibling =3D /[+~]/,
=20
 	// CSS escapes
-	// http://www.w3.org/TR/CSS21/syndata.html#escaped-characters
-	runescape =3D new RegExp( "\\\\([\\da-f]{1,6}" + whitespace + "?|(" + whi=
tespace + ")|.)", "ig" ),
-	funescape =3D function( _, escaped, escapedWhitespace ) {
-		var high =3D "0x" + escaped - 0x10000;
-		// NaN means non-codepoint
-		// Support: Firefox<24
-		// Workaround erroneous numeric interpretation of +"0x"
-		return high !=3D=3D high || escapedWhitespace ?
-			escaped :
-			high < 0 ?
-				// BMP codepoint
-				String.fromCharCode( high + 0x10000 ) :
-				// Supplemental Plane codepoint (surrogate pair)
-				String.fromCharCode( high >> 10 | 0xD800, high & 0x3FF | 0xDC00 );
-	},
+	// https://www.w3.org/TR/CSS21/syndata.html#escaped-characters
+	runescape =3D new RegExp( "\\\\[\\da-fA-F]{1,6}" + whitespace +
+		"?|\\\\([^\\r\\n\\f])", "g" ),
+	funescape =3D function( escape, nonHex ) {
+		var high =3D "0x" + escape.slice( 1 ) - 0x10000;
=20
-	// CSS string/identifier serialization
-	// https://drafts.csswg.org/cssom/#common-serializing-idioms
-	rcssescape =3D /([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,
-	fcssescape =3D function( ch, asCodePoint ) {
-		if ( asCodePoint ) {
+		if ( nonHex ) {
=20
-			// U+0000 NULL becomes U+FFFD REPLACEMENT CHARACTER
-			if ( ch =3D=3D=3D "\0" ) {
-				return "\uFFFD";
-			}
-
-			// Control characters and (dependent upon position) numbers get escaped=
 as code points
-			return ch.slice( 0, -1 ) + "\\" + ch.charCodeAt( ch.length - 1 ).toStri=
ng( 16 ) + " ";
+			// Strip the backslash prefix from a non-hex escape sequence
+			return nonHex;
 		}
=20
-		// Other potentially-special ASCII characters get backslash-escaped
-		return "\\" + ch;
+		// Replace a hexadecimal escape sequence with the encoded Unicode code p=
oint
+		// Support: IE <=3D11+
+		// For values outside the Basic Multilingual Plane (BMP), manually const=
ruct a
+		// surrogate pair
+		return high < 0 ?
+			String.fromCharCode( high + 0x10000 ) :
+			String.fromCharCode( high >> 10 | 0xD800, high & 0x3FF | 0xDC00 );
 	},
=20
-	// Used for iframes
-	// See setDocument()
+	// Used for iframes; see `setDocument`.
+	// Support: IE 9 - 11+, Edge 12 - 18+
 	// Removing the function wrapper causes a "Permission Denied"
-	// error in IE
+	// error in IE/Edge.
 	unloadHandler =3D function() {
 		setDocument();
 	},
=20
 	inDisabledFieldset =3D addCombinator(
 		function( elem ) {
-			return elem.disabled =3D=3D=3D true && elem.nodeName.toLowerCase() =3D=
=3D=3D "fieldset";
+			return elem.disabled =3D=3D=3D true && nodeName( elem, "fieldset" );
 		},
 		{ dir: "parentNode", next: "legend" }
 	);
=20
+// Support: IE <=3D9 only
+// Accessing document.activeElement can throw unexpectedly
+// https://bugs.jquery.com/ticket/13393
+function safeActiveElement() {
+	try {
+		return document.activeElement;
+	} catch ( err ) { }
+}
+
 // Optimize for push.apply( _, NodeList )
 try {
 	push.apply(
-		(arr =3D slice.call( preferredDoc.childNodes )),
+		( arr =3D slice.call( preferredDoc.childNodes ) ),
 		preferredDoc.childNodes
 	);
-	// Support: Android<4.0
+
+	// Support: Android <=3D4.0
 	// Detect silently failing push.apply
+	// eslint-disable-next-line no-unused-expressions
 	arr[ preferredDoc.childNodes.length ].nodeType;
 } catch ( e ) {
-	push =3D { apply: arr.length ?
-
-		// Leverage slice if possible
-		function( target, els ) {
-			push_native.apply( target, slice.call(els) );
-		} :
-
-		// Support: IE<9
-		// Otherwise append directly
-		function( target, els ) {
-			var j =3D target.length,
-				i =3D 0;
-			// Can't trust NodeList.length
-			while ( (target[j++] =3D els[i++]) ) {}
-			target.length =3D j - 1;
+	push =3D {
+		apply: function( target, els ) {
+			pushNative.apply( target, slice.call( els ) );
+		},
+		call: function( target ) {
+			pushNative.apply( target, slice.call( arguments, 1 ) );
 		}
 	};
 }
=20
-function Sizzle( selector, context, results, seed ) {
+function find( selector, context, results, seed ) {
 	var m, i, elem, nid, match, groups, newSelector,
 		newContext =3D context && context.ownerDocument,
=20
@@ -744,30 +820,26 @@ function Sizzle( selector, context, results, seed ) {
=20
 	// Try to shortcut find operations (as opposed to filters) in HTML docume=
nts
 	if ( !seed ) {
-
-		if ( ( context ? context.ownerDocument || context : preferredDoc ) !=3D=
=3D document ) {
-			setDocument( context );
-		}
+		setDocument( context );
 		context =3D context || document;
=20
 		if ( documentIsHTML ) {
=20
 			// If the selector is sufficiently simple, try using a "get*By*" DOM me=
thod
 			// (excepting DocumentFragment context, where the methods don't exist)
-			if ( nodeType !=3D=3D 11 && (match =3D rquickExpr.exec( selector )) ) {
+			if ( nodeType !=3D=3D 11 && ( match =3D rquickExpr.exec( selector ) ) )=
 {
=20
 				// ID selector
-				if ( (m =3D match[1]) ) {
+				if ( ( m =3D match[ 1 ] ) ) {
=20
 					// Document context
 					if ( nodeType =3D=3D=3D 9 ) {
-						if ( (elem =3D context.getElementById( m )) ) {
+						if ( ( elem =3D context.getElementById( m ) ) ) {
=20
-							// Support: IE, Opera, Webkit
-							// TODO: identify versions
+							// Support: IE 9 only
 							// getElementById can match elements by name instead of ID
 							if ( elem.id =3D=3D=3D m ) {
-								results.push( elem );
+								push.call( results, elem );
 								return results;
 							}
 						} else {
@@ -777,40 +849,32 @@ function Sizzle( selector, context, results, seed ) {
 					// Element context
 					} else {
=20
-						// Support: IE, Opera, Webkit
-						// TODO: identify versions
+						// Support: IE 9 only
 						// getElementById can match elements by name instead of ID
-						if ( newContext && (elem =3D newContext.getElementById( m )) &&
-							contains( context, elem ) &&
+						if ( newContext && ( elem =3D newContext.getElementById( m ) ) &&
+							find.contains( context, elem ) &&
 							elem.id =3D=3D=3D m ) {
=20
-							results.push( elem );
+							push.call( results, elem );
 							return results;
 						}
 					}
=20
 				// Type selector
-				} else if ( match[2] ) {
+				} else if ( match[ 2 ] ) {
 					push.apply( results, context.getElementsByTagName( selector ) );
 					return results;
=20
 				// Class selector
-				} else if ( (m =3D match[3]) && support.getElementsByClassName &&
-					context.getElementsByClassName ) {
-
+				} else if ( ( m =3D match[ 3 ] ) && context.getElementsByClassName ) {
 					push.apply( results, context.getElementsByClassName( m ) );
 					return results;
 				}
 			}
=20
 			// Take advantage of querySelectorAll
-			if ( support.qsa &&
-				!nonnativeSelectorCache[ selector + " " ] &&
-				(!rbuggyQSA || !rbuggyQSA.test( selector )) &&
-
-				// Support: IE 8 only
-				// Exclude object elements
-				(nodeType !=3D=3D 1 || context.nodeName.toLowerCase() !=3D=3D "object"=
) ) {
+			if ( !nonnativeSelectorCache[ selector + " " ] &&
+				( !rbuggyQSA || !rbuggyQSA.test( selector ) ) ) {
=20
 				newSelector =3D selector;
 				newContext =3D context;
@@ -819,27 +883,40 @@ function Sizzle( selector, context, results, seed ) {
 				// descendant combinators, which is not what we want.
 				// In such cases, we work around the behavior by prefixing every selec=
tor in the
 				// list with an ID selector referencing the scope context.
+				// The technique has to be used as well when a leading combinator is u=
sed
+				// as such selectors are not recognized by querySelectorAll.
 				// Thanks to Andrew Dupont for this technique.
-				if ( nodeType =3D=3D=3D 1 && rdescend.test( selector ) ) {
+				if ( nodeType =3D=3D=3D 1 &&
+					( rdescend.test( selector ) || rleadingCombinator.test( selector ) ) =
) {
=20
-					// Capture the context ID, setting it first if necessary
-					if ( (nid =3D context.getAttribute( "id" )) ) {
-						nid =3D nid.replace( rcssescape, fcssescape );
-					} else {
-						context.setAttribute( "id", (nid =3D expando) );
+					// Expand context for sibling selectors
+					newContext =3D rsibling.test( selector ) && testContext( context.pare=
ntNode ) ||
+						context;
+
+					// We can use :scope instead of the ID hack if the browser
+					// supports it & if we're not changing the context.
+					// Support: IE 11+, Edge 17 - 18+
+					// IE/Edge sometimes throw a "Permission denied" error when
+					// strict-comparing two documents; shallow comparisons work.
+					// eslint-disable-next-line eqeqeq
+					if ( newContext !=3D context || !support.scope ) {
+
+						// Capture the context ID, setting it first if necessary
+						if ( ( nid =3D context.getAttribute( "id" ) ) ) {
+							nid =3D jQuery.escapeSelector( nid );
+						} else {
+							context.setAttribute( "id", ( nid =3D expando ) );
+						}
 					}
=20
 					// Prefix every selector in the list
 					groups =3D tokenize( selector );
 					i =3D groups.length;
 					while ( i-- ) {
-						groups[i] =3D "#" + nid + " " + toSelector( groups[i] );
+						groups[ i ] =3D ( nid ? "#" + nid : ":scope" ) + " " +
+							toSelector( groups[ i ] );
 					}
 					newSelector =3D groups.join( "," );
-
-					// Expand context for sibling selectors
-					newContext =3D rsibling.test( selector ) && testContext( context.pare=
ntNode ) ||
-						context;
 				}
=20
 				try {
@@ -859,7 +936,7 @@ function Sizzle( selector, context, results, seed ) {
 	}
=20
 	// All others
-	return select( selector.replace( rtrim, "$1" ), context, results, seed );
+	return select( selector.replace( rtrimCSS, "$1" ), context, results, seed=
 );
 }
=20
 /**
@@ -872,18 +949,21 @@ function createCache() {
 	var keys =3D [];
=20
 	function cache( key, value ) {
-		// Use (key + " ") to avoid collision with native prototype properties (=
see Issue #157)
+
+		// Use (key + " ") to avoid collision with native prototype properties
+		// (see https://github.com/jquery/sizzle/issues/157)
 		if ( keys.push( key + " " ) > Expr.cacheLength ) {
+
 			// Only keep the most recent entries
 			delete cache[ keys.shift() ];
 		}
-		return (cache[ key + " " ] =3D value);
+		return ( cache[ key + " " ] =3D value );
 	}
 	return cache;
 }
=20
 /**
- * Mark a function for special use by Sizzle
+ * Mark a function for special use by jQuery selector module
  * @param {Function} fn The function to mark
  */
 function markFunction( fn ) {
@@ -896,72 +976,31 @@ function markFunction( fn ) {
  * @param {Function} fn Passed the created element and returns a boolean r=
esult
  */
 function assert( fn ) {
-	var el =3D document.createElement("fieldset");
+	var el =3D document.createElement( "fieldset" );
=20
 	try {
 		return !!fn( el );
-	} catch (e) {
+	} catch ( e ) {
 		return false;
 	} finally {
+
 		// Remove from its parent by default
 		if ( el.parentNode ) {
 			el.parentNode.removeChild( el );
 		}
+
 		// release memory in IE
 		el =3D null;
 	}
 }
=20
-/**
- * Adds the same handler for all of the specified attrs
- * @param {String} attrs Pipe-separated list of attributes
- * @param {Function} handler The method that will be applied
- */
-function addHandle( attrs, handler ) {
-	var arr =3D attrs.split("|"),
-		i =3D arr.length;
-
-	while ( i-- ) {
-		Expr.attrHandle[ arr[i] ] =3D handler;
-	}
-}
-
-/**
- * Checks document order of two siblings
- * @param {Element} a
- * @param {Element} b
- * @returns {Number} Returns less than 0 if a precedes b, greater than 0 i=
f a follows b
- */
-function siblingCheck( a, b ) {
-	var cur =3D b && a,
-		diff =3D cur && a.nodeType =3D=3D=3D 1 && b.nodeType =3D=3D=3D 1 &&
-			a.sourceIndex - b.sourceIndex;
-
-	// Use IE sourceIndex if available on both nodes
-	if ( diff ) {
-		return diff;
-	}
-
-	// Check if b follows a
-	if ( cur ) {
-		while ( (cur =3D cur.nextSibling) ) {
-			if ( cur =3D=3D=3D b ) {
-				return -1;
-			}
-		}
-	}
-
-	return a ? 1 : -1;
-}
-
 /**
  * Returns a function to use in pseudos for input types
  * @param {String} type
  */
 function createInputPseudo( type ) {
 	return function( elem ) {
-		var name =3D elem.nodeName.toLowerCase();
-		return name =3D=3D=3D "input" && elem.type =3D=3D=3D type;
+		return nodeName( elem, "input" ) && elem.type =3D=3D=3D type;
 	};
 }
=20
@@ -971,8 +1010,8 @@ function createInputPseudo( type ) {
  */
 function createButtonPseudo( type ) {
 	return function( elem ) {
-		var name =3D elem.nodeName.toLowerCase();
-		return (name =3D=3D=3D "input" || name =3D=3D=3D "button") && elem.type =
=3D=3D=3D type;
+		return ( nodeName( elem, "input" ) || nodeName( elem, "button" ) ) &&
+			elem.type =3D=3D=3D type;
 	};
 }
=20
@@ -1008,12 +1047,11 @@ function createDisabledPseudo( disabled ) {
 					}
 				}
=20
-				// Support: IE 6 - 11
+				// Support: IE 6 - 11+
 				// Use the isDisabled shortcut property to check for disabled fieldset=
 ancestors
 				return elem.isDisabled =3D=3D=3D disabled ||
=20
 					// Where there is no isDisabled, check manually
-					/* jshint -W018 */
 					elem.isDisabled !=3D=3D !disabled &&
 						inDisabledFieldset( elem ) =3D=3D=3D disabled;
 			}
@@ -1037,25 +1075,25 @@ function createDisabledPseudo( disabled ) {
  * @param {Function} fn
  */
 function createPositionalPseudo( fn ) {
-	return markFunction(function( argument ) {
+	return markFunction( function( argument ) {
 		argument =3D +argument;
-		return markFunction(function( seed, matches ) {
+		return markFunction( function( seed, matches ) {
 			var j,
 				matchIndexes =3D fn( [], seed.length, argument ),
 				i =3D matchIndexes.length;
=20
 			// Match elements found at the specified indexes
 			while ( i-- ) {
-				if ( seed[ (j =3D matchIndexes[i]) ] ) {
-					seed[j] =3D !(matches[j] =3D seed[j]);
+				if ( seed[ ( j =3D matchIndexes[ i ] ) ] ) {
+					seed[ j ] =3D !( matches[ j ] =3D seed[ j ] );
 				}
 			}
-		});
-	});
+		} );
+	} );
 }
=20
 /**
- * Checks a node for validity as a Sizzle context
+ * Checks a node for validity as a jQuery selector context
  * @param {Element|Object=3D} context
  * @returns {Element|Object|Boolean} The input node if acceptable, otherwi=
se a falsy value
  */
@@ -1063,117 +1101,121 @@ function testContext( context ) {
 	return context && typeof context.getElementsByTagName !=3D=3D "undefined"=
 && context;
 }
=20
-// Expose support vars for convenience
-support =3D Sizzle.support =3D {};
-
-/**
- * Detects XML nodes
- * @param {Element|Object} elem An element or a document
- * @returns {Boolean} True iff elem is a non-HTML XML node
- */
-isXML =3D Sizzle.isXML =3D function( elem ) {
-	var namespace =3D elem.namespaceURI,
-		docElem =3D (elem.ownerDocument || elem).documentElement;
-
-	// Support: IE <=3D8
-	// Assume HTML when documentElement doesn't yet exist, such as inside loa=
ding iframes
-	// https://bugs.jquery.com/ticket/4833
-	return !rhtml.test( namespace || docElem && docElem.nodeName || "HTML" );
-};
-
 /**
  * Sets document-related variables once based on the current document
- * @param {Element|Object} [doc] An element or document object to use to s=
et the document
+ * @param {Element|Object} [node] An element or document object to use to =
set the document
  * @returns {Object} Returns the current document
  */
-setDocument =3D Sizzle.setDocument =3D function( node ) {
-	var hasCompare, subWindow,
+function setDocument( node ) {
+	var subWindow,
 		doc =3D node ? node.ownerDocument || node : preferredDoc;
=20
 	// Return early if doc is invalid or already selected
-	if ( doc =3D=3D=3D document || doc.nodeType !=3D=3D 9 || !doc.documentEle=
ment ) {
+	// Support: IE 11+, Edge 17 - 18+
+	// IE/Edge sometimes throw a "Permission denied" error when strict-compar=
ing
+	// two documents; shallow comparisons work.
+	// eslint-disable-next-line eqeqeq
+	if ( doc =3D=3D document || doc.nodeType !=3D=3D 9 || !doc.documentElemen=
t ) {
 		return document;
 	}
=20
 	// Update global variables
 	document =3D doc;
-	docElem =3D document.documentElement;
-	documentIsHTML =3D !isXML( document );
+	documentElement =3D document.documentElement;
+	documentIsHTML =3D !jQuery.isXMLDoc( document );
+
+	// Support: iOS 7 only, IE 9 - 11+
+	// Older browsers didn't support unprefixed `matches`.
+	matches =3D documentElement.matches ||
+		documentElement.webkitMatchesSelector ||
+		documentElement.msMatchesSelector;
+
+	// Support: IE 9 - 11+, Edge 12 - 18+
+	// Accessing iframe documents after unload throws "permission denied" err=
ors
+	// (see trac-13936).
+	// Limit the fix to IE & Edge Legacy; despite Edge 15+ implementing `matc=
hes`,
+	// all IE 9+ and Edge Legacy versions implement `msMatchesSelector` as we=
ll.
+	if ( documentElement.msMatchesSelector &&
+
+		// Support: IE 11+, Edge 17 - 18+
+		// IE/Edge sometimes throw a "Permission denied" error when strict-compa=
ring
+		// two documents; shallow comparisons work.
+		// eslint-disable-next-line eqeqeq
+		preferredDoc !=3D document &&
+		( subWindow =3D document.defaultView ) && subWindow.top !=3D=3D subWindo=
w ) {
+
+		// Support: IE 9 - 11+, Edge 12 - 18+
+		subWindow.addEventListener( "unload", unloadHandler );
+	}
+
+	// Support: IE <10
+	// Check if getElementById returns elements by name
+	// The broken getElementById methods don't pick up programmatically-set n=
ames,
+	// so use a roundabout getElementsByName test
+	support.getById =3D assert( function( el ) {
+		documentElement.appendChild( el ).id =3D jQuery.expando;
+		return !document.getElementsByName ||
+			!document.getElementsByName( jQuery.expando ).length;
+	} );
=20
-	// Support: IE 9-11, Edge
-	// Accessing iframe documents after unload throws "permission denied" err=
ors (jQuery #13936)
-	if ( preferredDoc !=3D=3D document &&
-		(subWindow =3D document.defaultView) && subWindow.top !=3D=3D subWindow =
) {
+	// Support: IE 9 only
+	// Check to see if it's possible to do matchesSelector
+	// on a disconnected node.
+	support.disconnectedMatch =3D assert( function( el ) {
+		return matches.call( el, "*" );
+	} );
=20
-		// Support: IE 11, Edge
-		if ( subWindow.addEventListener ) {
-			subWindow.addEventListener( "unload", unloadHandler, false );
+	// Support: IE 9 - 11+, Edge 12 - 18+
+	// IE/Edge don't support the :scope pseudo-class.
+	support.scope =3D assert( function() {
+		return document.querySelectorAll( ":scope" );
+	} );
=20
-		// Support: IE 9 - 10 only
-		} else if ( subWindow.attachEvent ) {
-			subWindow.attachEvent( "onunload", unloadHandler );
+	// Support: Chrome 105 - 111 only, Safari 15.4 - 16.3 only
+	// Make sure the `:has()` argument is parsed unforgivingly.
+	// We include `*` in the test to detect buggy implementations that are
+	// _selectively_ forgiving (specifically when the list includes at least
+	// one valid selector).
+	// Note that we treat complete lack of support for `:has()` as if it were
+	// spec-compliant support, which is fine because use of `:has()` in such
+	// environments will fail in the qSA path and fall back to jQuery travers=
al
+	// anyway.
+	support.cssHas =3D assert( function() {
+		try {
+			document.querySelector( ":has(*,:jqfake)" );
+			return false;
+		} catch ( e ) {
+			return true;
 		}
-	}
-
-	/* Attributes
-	---------------------------------------------------------------------- */
-
-	// Support: IE<8
-	// Verify that getAttribute really returns attributes and not properties
-	// (excepting IE8 booleans)
-	support.attributes =3D assert(function( el ) {
-		el.className =3D "i";
-		return !el.getAttribute("className");
-	});
-
-	/* getElement(s)By*
-	---------------------------------------------------------------------- */
-
-	// Check if getElementsByTagName("*") returns only elements
-	support.getElementsByTagName =3D assert(function( el ) {
-		el.appendChild( document.createComment("") );
-		return !el.getElementsByTagName("*").length;
-	});
-
-	// Support: IE<9
-	support.getElementsByClassName =3D rnative.test( document.getElementsByCl=
assName );
-
-	// Support: IE<10
-	// Check if getElementById returns elements by name
-	// The broken getElementById methods don't pick up programmatically-set n=
ames,
-	// so use a roundabout getElementsByName test
-	support.getById =3D assert(function( el ) {
-		docElem.appendChild( el ).id =3D expando;
-		return !document.getElementsByName || !document.getElementsByName( expan=
do ).length;
-	});
+	} );
=20
 	// ID filter and find
 	if ( support.getById ) {
-		Expr.filter["ID"] =3D function( id ) {
+		Expr.filter.ID =3D function( id ) {
 			var attrId =3D id.replace( runescape, funescape );
 			return function( elem ) {
-				return elem.getAttribute("id") =3D=3D=3D attrId;
+				return elem.getAttribute( "id" ) =3D=3D=3D attrId;
 			};
 		};
-		Expr.find["ID"] =3D function( id, context ) {
+		Expr.find.ID =3D function( id, context ) {
 			if ( typeof context.getElementById !=3D=3D "undefined" && documentIsHTM=
L ) {
 				var elem =3D context.getElementById( id );
 				return elem ? [ elem ] : [];
 			}
 		};
 	} else {
-		Expr.filter["ID"] =3D  function( id ) {
+		Expr.filter.ID =3D  function( id ) {
 			var attrId =3D id.replace( runescape, funescape );
 			return function( elem ) {
 				var node =3D typeof elem.getAttributeNode !=3D=3D "undefined" &&
-					elem.getAttributeNode("id");
+					elem.getAttributeNode( "id" );
 				return node && node.value =3D=3D=3D attrId;
 			};
 		};
=20
 		// Support: IE 6 - 7 only
 		// getElementById is not reliable as a find shortcut
-		Expr.find["ID"] =3D function( id, context ) {
+		Expr.find.ID =3D function( id, context ) {
 			if ( typeof context.getElementById !=3D=3D "undefined" && documentIsHTM=
L ) {
 				var node, i, elems,
 					elem =3D context.getElementById( id );
@@ -1181,7 +1223,7 @@ setDocument =3D Sizzle.setDocument =3D function( node=
 ) {
 				if ( elem ) {
=20
 					// Verify the id attribute
-					node =3D elem.getAttributeNode("id");
+					node =3D elem.getAttributeNode( "id" );
 					if ( node && node.value =3D=3D=3D id ) {
 						return [ elem ];
 					}
@@ -1189,8 +1231,8 @@ setDocument =3D Sizzle.setDocument =3D function( node=
 ) {
 					// Fall back on getElementsByName
 					elems =3D context.getElementsByName( id );
 					i =3D 0;
-					while ( (elem =3D elems[i++]) ) {
-						node =3D elem.getAttributeNode("id");
+					while ( ( elem =3D elems[ i++ ] ) ) {
+						node =3D elem.getAttributeNode( "id" );
 						if ( node && node.value =3D=3D=3D id ) {
 							return [ elem ];
 						}
@@ -1203,39 +1245,18 @@ setDocument =3D Sizzle.setDocument =3D function( no=
de ) {
 	}
=20
 	// Tag
-	Expr.find["TAG"] =3D support.getElementsByTagName ?
-		function( tag, context ) {
-			if ( typeof context.getElementsByTagName !=3D=3D "undefined" ) {
-				return context.getElementsByTagName( tag );
+	Expr.find.TAG =3D function( tag, context ) {
+		if ( typeof context.getElementsByTagName !=3D=3D "undefined" ) {
+			return context.getElementsByTagName( tag );
=20
-			// DocumentFragment nodes don't have gEBTN
-			} else if ( support.qsa ) {
-				return context.querySelectorAll( tag );
-			}
-		} :
-
-		function( tag, context ) {
-			var elem,
-				tmp =3D [],
-				i =3D 0,
-				// By happy coincidence, a (broken) gEBTN appears on DocumentFragment =
nodes too
-				results =3D context.getElementsByTagName( tag );
-
-			// Filter out possible comments
-			if ( tag =3D=3D=3D "*" ) {
-				while ( (elem =3D results[i++]) ) {
-					if ( elem.nodeType =3D=3D=3D 1 ) {
-						tmp.push( elem );
-					}
-				}
-
-				return tmp;
-			}
-			return results;
-		};
+		// DocumentFragment nodes don't have gEBTN
+		} else {
+			return context.querySelectorAll( tag );
+		}
+	};
=20
 	// Class
-	Expr.find["CLASS"] =3D support.getElementsByClassName && function( classN=
ame, context ) {
+	Expr.find.CLASS =3D function( className, context ) {
 		if ( typeof context.getElementsByClassName !=3D=3D "undefined" && docume=
ntIsHTML ) {
 			return context.getElementsByClassName( className );
 		}
@@ -1246,153 +1267,94 @@ setDocument =3D Sizzle.setDocument =3D function( n=
ode ) {
=20
 	// QSA and matchesSelector support
=20
-	// matchesSelector(:active) reports false when true (IE9/Opera 11.5)
-	rbuggyMatches =3D [];
-
-	// qSa(:focus) reports false when true (Chrome 21)
-	// We allow this because of a bug in IE8/9 that throws an error
-	// whenever `document.activeElement` is accessed on an iframe
-	// So, we allow :focus to pass through QSA all the time to avoid the IE e=
rror
-	// See https://bugs.jquery.com/ticket/13378
 	rbuggyQSA =3D [];
=20
-	if ( (support.qsa =3D rnative.test( document.querySelectorAll )) ) {
-		// Build QSA regex
-		// Regex strategy adopted from Diego Perini
-		assert(function( el ) {
-			// Select is set to empty string on purpose
-			// This is to test IE's treatment of not explicitly
-			// setting a boolean content attribute,
-			// since its presence should be enough
-			// https://bugs.jquery.com/ticket/12359
-			docElem.appendChild( el ).innerHTML =3D "<a id=3D'" + expando + "'></a>=
" +
-				"<select id=3D'" + expando + "-\r\\' msallowcapture=3D''>" +
-				"<option selected=3D''></option></select>";
-
-			// Support: IE8, Opera 11-12.16
-			// Nothing should be selected when empty strings follow ^=3D or $=3D or=
 *=3D
-			// The test attribute must be unknown in Opera but "safe" for WinRT
-			// https://msdn.microsoft.com/en-us/library/ie/hh465388.aspx#attribute_=
section
-			if ( el.querySelectorAll("[msallowcapture^=3D'']").length ) {
-				rbuggyQSA.push( "[*^$]=3D" + whitespace + "*(?:''|\"\")" );
-			}
-
-			// Support: IE8
-			// Boolean attributes and "value" are not treated correctly
-			if ( !el.querySelectorAll("[selected]").length ) {
-				rbuggyQSA.push( "\\[" + whitespace + "*(?:value|" + booleans + ")" );
-			}
-
-			// Support: Chrome<29, Android<4.4, Safari<7.0+, iOS<7.0+, PhantomJS<1.=
9.8+
-			if ( !el.querySelectorAll( "[id~=3D" + expando + "-]" ).length ) {
-				rbuggyQSA.push("~=3D");
-			}
-
-			// Webkit/Opera - :checked should return selected option elements
-			// http://www.w3.org/TR/2011/REC-css3-selectors-20110929/#checked
-			// IE8 throws error here and will not see later tests
-			if ( !el.querySelectorAll(":checked").length ) {
-				rbuggyQSA.push(":checked");
-			}
-
-			// Support: Safari 8+, iOS 8+
-			// https://bugs.webkit.org/show_bug.cgi?id=3D136851
-			// In-page `selector#id sibling-combinator selector` fails
-			if ( !el.querySelectorAll( "a#" + expando + "+*" ).length ) {
-				rbuggyQSA.push(".#.+[+~]");
-			}
-		});
+	// Build QSA regex
+	// Regex strategy adopted from Diego Perini
+	assert( function( el ) {
=20
-		assert(function( el ) {
-			el.innerHTML =3D "<a href=3D'' disabled=3D'disabled'></a>" +
-				"<select disabled=3D'disabled'><option/></select>";
+		var input;
=20
-			// Support: Windows 8 Native Apps
-			// The type and name attributes are restricted during .innerHTML assign=
ment
-			var input =3D document.createElement("input");
-			input.setAttribute( "type", "hidden" );
-			el.appendChild( input ).setAttribute( "name", "D" );
+		documentElement.appendChild( el ).innerHTML =3D
+			"<a id=3D'" + expando + "' href=3D'' disabled=3D'disabled'></a>" +
+			"<select id=3D'" + expando + "-\r\\' disabled=3D'disabled'>" +
+			"<option selected=3D''></option></select>";
=20
-			// Support: IE8
-			// Enforce case-sensitivity of name attribute
-			if ( el.querySelectorAll("[name=3Dd]").length ) {
-				rbuggyQSA.push( "name" + whitespace + "*[*^$|!~]?=3D" );
-			}
+		// Support: iOS <=3D7 - 8 only
+		// Boolean attributes and "value" are not treated correctly in some XML =
documents
+		if ( !el.querySelectorAll( "[selected]" ).length ) {
+			rbuggyQSA.push( "\\[" + whitespace + "*(?:value|" + booleans + ")" );
+		}
=20
-			// FF 3.5 - :enabled/:disabled and hidden elements (hidden elements are=
 still enabled)
-			// IE8 throws error here and will not see later tests
-			if ( el.querySelectorAll(":enabled").length !=3D=3D 2 ) {
-				rbuggyQSA.push( ":enabled", ":disabled" );
-			}
+		// Support: iOS <=3D7 - 8 only
+		if ( !el.querySelectorAll( "[id~=3D" + expando + "-]" ).length ) {
+			rbuggyQSA.push( "~=3D" );
+		}
=20
-			// Support: IE9-11+
-			// IE's :disabled selector does not pick up the children of disabled fi=
eldsets
-			docElem.appendChild( el ).disabled =3D true;
-			if ( el.querySelectorAll(":disabled").length !=3D=3D 2 ) {
-				rbuggyQSA.push( ":enabled", ":disabled" );
-			}
+		// Support: iOS 8 only
+		// https://bugs.webkit.org/show_bug.cgi?id=3D136851
+		// In-page `selector#id sibling-combinator selector` fails
+		if ( !el.querySelectorAll( "a#" + expando + "+*" ).length ) {
+			rbuggyQSA.push( ".#.+[+~]" );
+		}
=20
-			// Opera 10-11 does not throw on post-comma invalid pseudos
-			el.querySelectorAll("*,:x");
-			rbuggyQSA.push(",.*:");
-		});
-	}
+		// Support: Chrome <=3D105+, Firefox <=3D104+, Safari <=3D15.4+
+		// In some of the document kinds, these selectors wouldn't work natively.
+		// This is probably OK but for backwards compatibility we want to mainta=
in
+		// handling them through jQuery traversal in jQuery 3.x.
+		if ( !el.querySelectorAll( ":checked" ).length ) {
+			rbuggyQSA.push( ":checked" );
+		}
=20
-	if ( (support.matchesSelector =3D rnative.test( (matches =3D docElem.matc=
hes ||
-		docElem.webkitMatchesSelector ||
-		docElem.mozMatchesSelector ||
-		docElem.oMatchesSelector ||
-		docElem.msMatchesSelector) )) ) {
+		// Support: Windows 8 Native Apps
+		// The type and name attributes are restricted during .innerHTML assignm=
ent
+		input =3D document.createElement( "input" );
+		input.setAttribute( "type", "hidden" );
+		el.appendChild( input ).setAttribute( "name", "D" );
+
+		// Support: IE 9 - 11+
+		// IE's :disabled selector does not pick up the children of disabled fie=
ldsets
+		// Support: Chrome <=3D105+, Firefox <=3D104+, Safari <=3D15.4+
+		// In some of the document kinds, these selectors wouldn't work natively.
+		// This is probably OK but for backwards compatibility we want to mainta=
in
+		// handling them through jQuery traversal in jQuery 3.x.
+		documentElement.appendChild( el ).disabled =3D true;
+		if ( el.querySelectorAll( ":disabled" ).length !=3D=3D 2 ) {
+			rbuggyQSA.push( ":enabled", ":disabled" );
+		}
+
+		// Support: IE 11+, Edge 15 - 18+
+		// IE 11/Edge don't find elements on a `[name=3D'']` query in some cases.
+		// Adding a temporary attribute to the document before the selection wor=
ks
+		// around the issue.
+		// Interestingly, IE 10 & older don't seem to have the issue.
+		input =3D document.createElement( "input" );
+		input.setAttribute( "name", "" );
+		el.appendChild( input );
+		if ( !el.querySelectorAll( "[name=3D'']" ).length ) {
+			rbuggyQSA.push( "\\[" + whitespace + "*name" + whitespace + "*=3D" +
+				whitespace + "*(?:''|\"\")" );
+		}
+	} );
=20
-		assert(function( el ) {
-			// Check to see if it's possible to do matchesSelector
-			// on a disconnected node (IE 9)
-			support.disconnectedMatch =3D matches.call( el, "*" );
+	if ( !support.cssHas ) {
=20
-			// This should fail with an exception
-			// Gecko does not error, returns false instead
-			matches.call( el, "[s!=3D'']:x" );
-			rbuggyMatches.push( "!=3D", pseudos );
-		});
+		// Support: Chrome 105 - 110+, Safari 15.4 - 16.3+
+		// Our regular `try-catch` mechanism fails to detect natively-unsupported
+		// pseudo-classes inside `:has()` (such as `:has(:contains("Foo"))`)
+		// in browsers that parse the `:has()` argument as a forgiving selector =
list.
+		// https://drafts.csswg.org/selectors/#relational now requires the argum=
ent
+		// to be parsed unforgivingly, but browsers have not yet fully adjusted.
+		rbuggyQSA.push( ":has" );
 	}
=20
-	rbuggyQSA =3D rbuggyQSA.length && new RegExp( rbuggyQSA.join("|") );
-	rbuggyMatches =3D rbuggyMatches.length && new RegExp( rbuggyMatches.join(=
"|") );
-
-	/* Contains
-	---------------------------------------------------------------------- */
-	hasCompare =3D rnative.test( docElem.compareDocumentPosition );
-
-	// Element contains another
-	// Purposefully self-exclusive
-	// As in, an element does not contain itself
-	contains =3D hasCompare || rnative.test( docElem.contains ) ?
-		function( a, b ) {
-			var adown =3D a.nodeType =3D=3D=3D 9 ? a.documentElement : a,
-				bup =3D b && b.parentNode;
-			return a =3D=3D=3D bup || !!( bup && bup.nodeType =3D=3D=3D 1 && (
-				adown.contains ?
-					adown.contains( bup ) :
-					a.compareDocumentPosition && a.compareDocumentPosition( bup ) & 16
-			));
-		} :
-		function( a, b ) {
-			if ( b ) {
-				while ( (b =3D b.parentNode) ) {
-					if ( b =3D=3D=3D a ) {
-						return true;
-					}
-				}
-			}
-			return false;
-		};
+	rbuggyQSA =3D rbuggyQSA.length && new RegExp( rbuggyQSA.join( "|" ) );
=20
 	/* Sorting
 	---------------------------------------------------------------------- */
=20
 	// Document order sorting
-	sortOrder =3D hasCompare ?
-	function( a, b ) {
+	sortOrder =3D function( a, b ) {
=20
 		// Flag for duplicate removal
 		if ( a =3D=3D=3D b ) {
@@ -1407,7 +1369,11 @@ setDocument =3D Sizzle.setDocument =3D function( nod=
e ) {
 		}
=20
 		// Calculate position if both inputs belong to the same document
-		compare =3D ( a.ownerDocument || a ) =3D=3D=3D ( b.ownerDocument || b ) ?
+		// Support: IE 11+, Edge 17 - 18+
+		// IE/Edge sometimes throw a "Permission denied" error when strict-compa=
ring
+		// two documents; shallow comparisons work.
+		// eslint-disable-next-line eqeqeq
+		compare =3D ( a.ownerDocument || a ) =3D=3D ( b.ownerDocument || b ) ?
 			a.compareDocumentPosition( b ) :
=20
 			// Otherwise we know they are disconnected
@@ -1415,148 +1381,109 @@ setDocument =3D Sizzle.setDocument =3D function( =
node ) {
=20
 		// Disconnected nodes
 		if ( compare & 1 ||
-			(!support.sortDetached && b.compareDocumentPosition( a ) =3D=3D=3D comp=
are) ) {
+			( !support.sortDetached && b.compareDocumentPosition( a ) =3D=3D=3D com=
pare ) ) {
=20
 			// Choose the first element that is related to our preferred document
-			if ( a =3D=3D=3D document || a.ownerDocument =3D=3D=3D preferredDoc && =
contains(preferredDoc, a) ) {
+			// Support: IE 11+, Edge 17 - 18+
+			// IE/Edge sometimes throw a "Permission denied" error when strict-comp=
aring
+			// two documents; shallow comparisons work.
+			// eslint-disable-next-line eqeqeq
+			if ( a =3D=3D=3D document || a.ownerDocument =3D=3D preferredDoc &&
+				find.contains( preferredDoc, a ) ) {
 				return -1;
 			}
-			if ( b =3D=3D=3D document || b.ownerDocument =3D=3D=3D preferredDoc && =
contains(preferredDoc, b) ) {
+
+			// Support: IE 11+, Edge 17 - 18+
+			// IE/Edge sometimes throw a "Permission denied" error when strict-comp=
aring
+			// two documents; shallow comparisons work.
+			// eslint-disable-next-line eqeqeq
+			if ( b =3D=3D=3D document || b.ownerDocument =3D=3D preferredDoc &&
+				find.contains( preferredDoc, b ) ) {
 				return 1;
 			}
=20
 			// Maintain original order
 			return sortInput ?
-				( indexOf( sortInput, a ) - indexOf( sortInput, b ) ) :
+				( indexOf.call( sortInput, a ) - indexOf.call( sortInput, b ) ) :
 				0;
 		}
=20
 		return compare & 4 ? -1 : 1;
-	} :
-	function( a, b ) {
-		// Exit early if the nodes are identical
-		if ( a =3D=3D=3D b ) {
-			hasDuplicate =3D true;
-			return 0;
-		}
-
-		var cur,
-			i =3D 0,
-			aup =3D a.parentNode,
-			bup =3D b.parentNode,
-			ap =3D [ a ],
-			bp =3D [ b ];
-
-		// Parentless nodes are either documents or disconnected
-		if ( !aup || !bup ) {
-			return a =3D=3D=3D document ? -1 :
-				b =3D=3D=3D document ? 1 :
-				aup ? -1 :
-				bup ? 1 :
-				sortInput ?
-				( indexOf( sortInput, a ) - indexOf( sortInput, b ) ) :
-				0;
-
-		// If the nodes are siblings, we can do a quick check
-		} else if ( aup =3D=3D=3D bup ) {
-			return siblingCheck( a, b );
-		}
-
-		// Otherwise we need full lists of their ancestors for comparison
-		cur =3D a;
-		while ( (cur =3D cur.parentNode) ) {
-			ap.unshift( cur );
-		}
-		cur =3D b;
-		while ( (cur =3D cur.parentNode) ) {
-			bp.unshift( cur );
-		}
-
-		// Walk down the tree looking for a discrepancy
-		while ( ap[i] =3D=3D=3D bp[i] ) {
-			i++;
-		}
-
-		return i ?
-			// Do a sibling check if the nodes have a common ancestor
-			siblingCheck( ap[i], bp[i] ) :
-
-			// Otherwise nodes in our document sort first
-			ap[i] =3D=3D=3D preferredDoc ? -1 :
-			bp[i] =3D=3D=3D preferredDoc ? 1 :
-			0;
 	};
=20
 	return document;
-};
+}
=20
-Sizzle.matches =3D function( expr, elements ) {
-	return Sizzle( expr, null, null, elements );
+find.matches =3D function( expr, elements ) {
+	return find( expr, null, null, elements );
 };
=20
-Sizzle.matchesSelector =3D function( elem, expr ) {
-	// Set document vars if needed
-	if ( ( elem.ownerDocument || elem ) !=3D=3D document ) {
-		setDocument( elem );
-	}
+find.matchesSelector =3D function( elem, expr ) {
+	setDocument( elem );
=20
-	if ( support.matchesSelector && documentIsHTML &&
+	if ( documentIsHTML &&
 		!nonnativeSelectorCache[ expr + " " ] &&
-		( !rbuggyMatches || !rbuggyMatches.test( expr ) ) &&
-		( !rbuggyQSA     || !rbuggyQSA.test( expr ) ) ) {
+		( !rbuggyQSA || !rbuggyQSA.test( expr ) ) ) {
=20
 		try {
 			var ret =3D matches.call( elem, expr );
=20
 			// IE 9's matchesSelector returns false on disconnected nodes
 			if ( ret || support.disconnectedMatch ||
+
 					// As well, disconnected nodes are said to be in a document
 					// fragment in IE 9
 					elem.document && elem.document.nodeType !=3D=3D 11 ) {
 				return ret;
 			}
-		} catch (e) {
+		} catch ( e ) {
 			nonnativeSelectorCache( expr, true );
 		}
 	}
=20
-	return Sizzle( expr, document, null, [ elem ] ).length > 0;
+	return find( expr, document, null, [ elem ] ).length > 0;
 };
=20
-Sizzle.contains =3D function( context, elem ) {
+find.contains =3D function( context, elem ) {
+
 	// Set document vars if needed
-	if ( ( context.ownerDocument || context ) !=3D=3D document ) {
+	// Support: IE 11+, Edge 17 - 18+
+	// IE/Edge sometimes throw a "Permission denied" error when strict-compar=
ing
+	// two documents; shallow comparisons work.
+	// eslint-disable-next-line eqeqeq
+	if ( ( context.ownerDocument || context ) !=3D document ) {
 		setDocument( context );
 	}
-	return contains( context, elem );
+	return jQuery.contains( context, elem );
 };
=20
-Sizzle.attr =3D function( elem, name ) {
+
+find.attr =3D function( elem, name ) {
+
 	// Set document vars if needed
-	if ( ( elem.ownerDocument || elem ) !=3D=3D document ) {
+	// Support: IE 11+, Edge 17 - 18+
+	// IE/Edge sometimes throw a "Permission denied" error when strict-compar=
ing
+	// two documents; shallow comparisons work.
+	// eslint-disable-next-line eqeqeq
+	if ( ( elem.ownerDocument || elem ) !=3D document ) {
 		setDocument( elem );
 	}
=20
 	var fn =3D Expr.attrHandle[ name.toLowerCase() ],
-		// Don't get fooled by Object.prototype properties (jQuery #13807)
+
+		// Don't get fooled by Object.prototype properties (see trac-13807)
 		val =3D fn && hasOwn.call( Expr.attrHandle, name.toLowerCase() ) ?
 			fn( elem, name, !documentIsHTML ) :
 			undefined;
=20
-	return val !=3D=3D undefined ?
-		val :
-		support.attributes || !documentIsHTML ?
-			elem.getAttribute( name ) :
-			(val =3D elem.getAttributeNode(name)) && val.specified ?
-				val.value :
-				null;
-};
+	if ( val !=3D=3D undefined ) {
+		return val;
+	}
=20
-Sizzle.escape =3D function( sel ) {
-	return (sel + "").replace( rcssescape, fcssescape );
+	return elem.getAttribute( name );
 };
=20
-Sizzle.error =3D function( msg ) {
+find.error =3D function( msg ) {
 	throw new Error( "Syntax error, unrecognized expression: " + msg );
 };
=20
@@ -1564,25 +1491,29 @@ Sizzle.error =3D function( msg ) {
  * Document sorting and removing duplicates
  * @param {ArrayLike} results
  */
-Sizzle.uniqueSort =3D function( results ) {
+jQuery.uniqueSort =3D function( results ) {
 	var elem,
 		duplicates =3D [],
 		j =3D 0,
 		i =3D 0;
=20
 	// Unless we *know* we can detect duplicates, assume their presence
-	hasDuplicate =3D !support.detectDuplicates;
-	sortInput =3D !support.sortStable && results.slice( 0 );
-	results.sort( sortOrder );
+	//
+	// Support: Android <=3D4.0+
+	// Testing for detecting duplicates is unpredictable so instead assume we=
 can't
+	// depend on duplicate detection in all browsers without a stable sort.
+	hasDuplicate =3D !support.sortStable;
+	sortInput =3D !support.sortStable && slice.call( results, 0 );
+	sort.call( results, sortOrder );
=20
 	if ( hasDuplicate ) {
-		while ( (elem =3D results[i++]) ) {
+		while ( ( elem =3D results[ i++ ] ) ) {
 			if ( elem =3D=3D=3D results[ i ] ) {
 				j =3D duplicates.push( i );
 			}
 		}
 		while ( j-- ) {
-			results.splice( duplicates[ j ], 1 );
+			splice.call( results, duplicates[ j ], 1 );
 		}
 	}
=20
@@ -1593,42 +1524,11 @@ Sizzle.uniqueSort =3D function( results ) {
 	return results;
 };
=20
-/**
- * Utility function for retrieving the text value of an array of DOM nodes
- * @param {Array|Element} elem
- */
-getText =3D Sizzle.getText =3D function( elem ) {
-	var node,
-		ret =3D "",
-		i =3D 0,
-		nodeType =3D elem.nodeType;
-
-	if ( !nodeType ) {
-		// If no nodeType, this is expected to be an array
-		while ( (node =3D elem[i++]) ) {
-			// Do not traverse comment nodes
-			ret +=3D getText( node );
-		}
-	} else if ( nodeType =3D=3D=3D 1 || nodeType =3D=3D=3D 9 || nodeType =3D=
=3D=3D 11 ) {
-		// Use textContent for elements
-		// innerText usage removed for consistency of new lines (jQuery #11153)
-		if ( typeof elem.textContent =3D=3D=3D "string" ) {
-			return elem.textContent;
-		} else {
-			// Traverse its children
-			for ( elem =3D elem.firstChild; elem; elem =3D elem.nextSibling ) {
-				ret +=3D getText( elem );
-			}
-		}
-	} else if ( nodeType =3D=3D=3D 3 || nodeType =3D=3D=3D 4 ) {
-		return elem.nodeValue;
-	}
-	// Do not include comment or processing instruction nodes
-
-	return ret;
+jQuery.fn.uniqueSort =3D function() {
+	return this.pushStack( jQuery.uniqueSort( slice.apply( this ) ) );
 };
=20
-Expr =3D Sizzle.selectors =3D {
+Expr =3D jQuery.expr =3D {
=20
 	// Can be adjusted by the user
 	cacheLength: 50,
@@ -1649,20 +1549,22 @@ Expr =3D Sizzle.selectors =3D {
 	},
=20
 	preFilter: {
-		"ATTR": function( match ) {
-			match[1] =3D match[1].replace( runescape, funescape );
+		ATTR: function( match ) {
+			match[ 1 ] =3D match[ 1 ].replace( runescape, funescape );
=20
 			// Move the given value to match[3] whether quoted or unquoted
-			match[3] =3D ( match[3] || match[4] || match[5] || "" ).replace( runesc=
ape, funescape );
+			match[ 3 ] =3D ( match[ 3 ] || match[ 4 ] || match[ 5 ] || "" )
+				.replace( runescape, funescape );
=20
-			if ( match[2] =3D=3D=3D "~=3D" ) {
-				match[3] =3D " " + match[3] + " ";
+			if ( match[ 2 ] =3D=3D=3D "~=3D" ) {
+				match[ 3 ] =3D " " + match[ 3 ] + " ";
 			}
=20
 			return match.slice( 0, 4 );
 		},
=20
-		"CHILD": function( match ) {
+		CHILD: function( match ) {
+
 			/* matches from matchExpr["CHILD"]
 				1 type (only|nth|...)
 				2 what (child|of-type)
@@ -1673,49 +1575,55 @@ Expr =3D Sizzle.selectors =3D {
 				7 sign of y-component
 				8 y of y-component
 			*/
-			match[1] =3D match[1].toLowerCase();
+			match[ 1 ] =3D match[ 1 ].toLowerCase();
+
+			if ( match[ 1 ].slice( 0, 3 ) =3D=3D=3D "nth" ) {
=20
-			if ( match[1].slice( 0, 3 ) =3D=3D=3D "nth" ) {
 				// nth-* requires argument
-				if ( !match[3] ) {
-					Sizzle.error( match[0] );
+				if ( !match[ 3 ] ) {
+					find.error( match[ 0 ] );
 				}
=20
 				// numeric x and y parameters for Expr.filter.CHILD
 				// remember that false/true cast respectively to 0/1
-				match[4] =3D +( match[4] ? match[5] + (match[6] || 1) : 2 * ( match[3]=
 =3D=3D=3D "even" || match[3] =3D=3D=3D "odd" ) );
-				match[5] =3D +( ( match[7] + match[8] ) || match[3] =3D=3D=3D "odd" );
+				match[ 4 ] =3D +( match[ 4 ] ?
+					match[ 5 ] + ( match[ 6 ] || 1 ) :
+					2 * ( match[ 3 ] =3D=3D=3D "even" || match[ 3 ] =3D=3D=3D "odd" )
+				);
+				match[ 5 ] =3D +( ( match[ 7 ] + match[ 8 ] ) || match[ 3 ] =3D=3D=3D =
"odd" );
=20
 			// other types prohibit arguments
-			} else if ( match[3] ) {
-				Sizzle.error( match[0] );
+			} else if ( match[ 3 ] ) {
+				find.error( match[ 0 ] );
 			}
=20
 			return match;
 		},
=20
-		"PSEUDO": function( match ) {
+		PSEUDO: function( match ) {
 			var excess,
-				unquoted =3D !match[6] && match[2];
+				unquoted =3D !match[ 6 ] && match[ 2 ];
=20
-			if ( matchExpr["CHILD"].test( match[0] ) ) {
+			if ( matchExpr.CHILD.test( match[ 0 ] ) ) {
 				return null;
 			}
=20
 			// Accept quoted arguments as-is
-			if ( match[3] ) {
-				match[2] =3D match[4] || match[5] || "";
+			if ( match[ 3 ] ) {
+				match[ 2 ] =3D match[ 4 ] || match[ 5 ] || "";
=20
 			// Strip excess characters from unquoted arguments
 			} else if ( unquoted && rpseudo.test( unquoted ) &&
+
 				// Get excess from tokenize (recursively)
-				(excess =3D tokenize( unquoted, true )) &&
+				( excess =3D tokenize( unquoted, true ) ) &&
+
 				// advance to the next closing parenthesis
-				(excess =3D unquoted.indexOf( ")", unquoted.length - excess ) - unquot=
ed.length) ) {
+				( excess =3D unquoted.indexOf( ")", unquoted.length - excess ) - unquo=
ted.length ) ) {
=20
 				// excess is a negative index
-				match[0] =3D match[0].slice( 0, excess );
-				match[2] =3D unquoted.slice( 0, excess );
+				match[ 0 ] =3D match[ 0 ].slice( 0, excess );
+				match[ 2 ] =3D unquoted.slice( 0, excess );
 			}
=20
 			// Return only captures needed by the pseudo filter method (type and ar=
gument)
@@ -1725,28 +1633,36 @@ Expr =3D Sizzle.selectors =3D {
=20
 	filter: {
=20
-		"TAG": function( nodeNameSelector ) {
-			var nodeName =3D nodeNameSelector.replace( runescape, funescape ).toLow=
erCase();
+		TAG: function( nodeNameSelector ) {
+			var expectedNodeName =3D nodeNameSelector.replace( runescape, funescape=
 ).toLowerCase();
 			return nodeNameSelector =3D=3D=3D "*" ?
-				function() { return true; } :
+				function() {
+					return true;
+				} :
 				function( elem ) {
-					return elem.nodeName && elem.nodeName.toLowerCase() =3D=3D=3D nodeNam=
e;
+					return nodeName( elem, expectedNodeName );
 				};
 		},
=20
-		"CLASS": function( className ) {
+		CLASS: function( className ) {
 			var pattern =3D classCache[ className + " " ];
=20
 			return pattern ||
-				(pattern =3D new RegExp( "(^|" + whitespace + ")" + className + "(" + =
whitespace + "|$)" )) &&
+				( pattern =3D new RegExp( "(^|" + whitespace + ")" + className +
+					"(" + whitespace + "|$)" ) ) &&
 				classCache( className, function( elem ) {
-					return pattern.test( typeof elem.className =3D=3D=3D "string" && elem=
.className || typeof elem.getAttribute !=3D=3D "undefined" && elem.getAttri=
bute("class") || "" );
-				});
+					return pattern.test(
+						typeof elem.className =3D=3D=3D "string" && elem.className ||
+							typeof elem.getAttribute !=3D=3D "undefined" &&
+								elem.getAttribute( "class" ) ||
+							""
+					);
+				} );
 		},
=20
-		"ATTR": function( name, operator, check ) {
+		ATTR: function( name, operator, check ) {
 			return function( elem ) {
-				var result =3D Sizzle.attr( elem, name );
+				var result =3D find.attr( elem, name );
=20
 				if ( result =3D=3D null ) {
 					return operator =3D=3D=3D "!=3D";
@@ -1757,18 +1673,34 @@ Expr =3D Sizzle.selectors =3D {
=20
 				result +=3D "";
=20
-				return operator =3D=3D=3D "=3D" ? result =3D=3D=3D check :
-					operator =3D=3D=3D "!=3D" ? result !=3D=3D check :
-					operator =3D=3D=3D "^=3D" ? check && result.indexOf( check ) =3D=3D=
=3D 0 :
-					operator =3D=3D=3D "*=3D" ? check && result.indexOf( check ) > -1 :
-					operator =3D=3D=3D "$=3D" ? check && result.slice( -check.length ) =
=3D=3D=3D check :
-					operator =3D=3D=3D "~=3D" ? ( " " + result.replace( rwhitespace, " " =
) + " " ).indexOf( check ) > -1 :
-					operator =3D=3D=3D "|=3D" ? result =3D=3D=3D check || result.slice( 0=
, check.length + 1 ) =3D=3D=3D check + "-" :
-					false;
+				if ( operator =3D=3D=3D "=3D" ) {
+					return result =3D=3D=3D check;
+				}
+				if ( operator =3D=3D=3D "!=3D" ) {
+					return result !=3D=3D check;
+				}
+				if ( operator =3D=3D=3D "^=3D" ) {
+					return check && result.indexOf( check ) =3D=3D=3D 0;
+				}
+				if ( operator =3D=3D=3D "*=3D" ) {
+					return check && result.indexOf( check ) > -1;
+				}
+				if ( operator =3D=3D=3D "$=3D" ) {
+					return check && result.slice( -check.length ) =3D=3D=3D check;
+				}
+				if ( operator =3D=3D=3D "~=3D" ) {
+					return ( " " + result.replace( rwhitespace, " " ) + " " )
+						.indexOf( check ) > -1;
+				}
+				if ( operator =3D=3D=3D "|=3D" ) {
+					return result =3D=3D=3D check || result.slice( 0, check.length + 1 ) =
=3D=3D=3D check + "-";
+				}
+
+				return false;
 			};
 		},
=20
-		"CHILD": function( type, what, argument, first, last ) {
+		CHILD: function( type, what, _argument, first, last ) {
 			var simple =3D type.slice( 0, 3 ) !=3D=3D "nth",
 				forward =3D type.slice( -4 ) !=3D=3D "last",
 				ofType =3D what =3D=3D=3D "of-type";
@@ -1780,8 +1712,8 @@ Expr =3D Sizzle.selectors =3D {
 					return !!elem.parentNode;
 				} :
=20
-				function( elem, context, xml ) {
-					var cache, uniqueCache, outerCache, node, nodeIndex, start,
+				function( elem, _context, xml ) {
+					var cache, outerCache, node, nodeIndex, start,
 						dir =3D simple !=3D=3D forward ? "nextSibling" : "previousSibling",
 						parent =3D elem.parentNode,
 						name =3D ofType && elem.nodeName.toLowerCase(),
@@ -1794,14 +1726,15 @@ Expr =3D Sizzle.selectors =3D {
 						if ( simple ) {
 							while ( dir ) {
 								node =3D elem;
-								while ( (node =3D node[ dir ]) ) {
+								while ( ( node =3D node[ dir ] ) ) {
 									if ( ofType ?
-										node.nodeName.toLowerCase() =3D=3D=3D name :
+										nodeName( node, name ) :
 										node.nodeType =3D=3D=3D 1 ) {
=20
 										return false;
 									}
 								}
+
 								// Reverse direction for :only-* (if we haven't yet done so)
 								start =3D dir =3D type =3D=3D=3D "only" && !start && "nextSibling";
 							}
@@ -1814,46 +1747,30 @@ Expr =3D Sizzle.selectors =3D {
 						if ( forward && useCache ) {
=20
 							// Seek `elem` from a previously-cached index
-
-							// ...in a gzip-friendly way
-							node =3D parent;
-							outerCache =3D node[ expando ] || (node[ expando ] =3D {});
-
-							// Support: IE <9 only
-							// Defend against cloned attroperties (jQuery gh-1709)
-							uniqueCache =3D outerCache[ node.uniqueID ] ||
-								(outerCache[ node.uniqueID ] =3D {});
-
-							cache =3D uniqueCache[ type ] || [];
+							outerCache =3D parent[ expando ] || ( parent[ expando ] =3D {} );
+							cache =3D outerCache[ type ] || [];
 							nodeIndex =3D cache[ 0 ] =3D=3D=3D dirruns && cache[ 1 ];
 							diff =3D nodeIndex && cache[ 2 ];
 							node =3D nodeIndex && parent.childNodes[ nodeIndex ];
=20
-							while ( (node =3D ++nodeIndex && node && node[ dir ] ||
+							while ( ( node =3D ++nodeIndex && node && node[ dir ] ||
=20
 								// Fallback to seeking `elem` from the start
-								(diff =3D nodeIndex =3D 0) || start.pop()) ) {
+								( diff =3D nodeIndex =3D 0 ) || start.pop() ) ) {
=20
 								// When found, cache indexes on `parent` and break
 								if ( node.nodeType =3D=3D=3D 1 && ++diff && node =3D=3D=3D elem ) {
-									uniqueCache[ type ] =3D [ dirruns, nodeIndex, diff ];
+									outerCache[ type ] =3D [ dirruns, nodeIndex, diff ];
 									break;
 								}
 							}
=20
 						} else {
+
 							// Use previously-cached element index if available
 							if ( useCache ) {
-								// ...in a gzip-friendly way
-								node =3D elem;
-								outerCache =3D node[ expando ] || (node[ expando ] =3D {});
-
-								// Support: IE <9 only
-								// Defend against cloned attroperties (jQuery gh-1709)
-								uniqueCache =3D outerCache[ node.uniqueID ] ||
-									(outerCache[ node.uniqueID ] =3D {});
-
-								cache =3D uniqueCache[ type ] || [];
+								outerCache =3D elem[ expando ] || ( elem[ expando ] =3D {} );
+								cache =3D outerCache[ type ] || [];
 								nodeIndex =3D cache[ 0 ] =3D=3D=3D dirruns && cache[ 1 ];
 								diff =3D nodeIndex;
 							}
@@ -1861,25 +1778,21 @@ Expr =3D Sizzle.selectors =3D {
 							// xml :nth-child(...)
 							// or :nth-last-child(...) or :nth(-last)?-of-type(...)
 							if ( diff =3D=3D=3D false ) {
+
 								// Use the same loop as above to seek `elem` from the start
-								while ( (node =3D ++nodeIndex && node && node[ dir ] ||
-									(diff =3D nodeIndex =3D 0) || start.pop()) ) {
+								while ( ( node =3D ++nodeIndex && node && node[ dir ] ||
+									( diff =3D nodeIndex =3D 0 ) || start.pop() ) ) {
=20
 									if ( ( ofType ?
-										node.nodeName.toLowerCase() =3D=3D=3D name :
+										nodeName( node, name ) :
 										node.nodeType =3D=3D=3D 1 ) &&
 										++diff ) {
=20
 										// Cache the index of each encountered element
 										if ( useCache ) {
-											outerCache =3D node[ expando ] || (node[ expando ] =3D {});
-
-											// Support: IE <9 only
-											// Defend against cloned attroperties (jQuery gh-1709)
-											uniqueCache =3D outerCache[ node.uniqueID ] ||
-												(outerCache[ node.uniqueID ] =3D {});
-
-											uniqueCache[ type ] =3D [ dirruns, diff ];
+											outerCache =3D node[ expando ] ||
+												( node[ expando ] =3D {} );
+											outerCache[ type ] =3D [ dirruns, diff ];
 										}
=20
 										if ( node =3D=3D=3D elem ) {
@@ -1897,18 +1810,19 @@ Expr =3D Sizzle.selectors =3D {
 				};
 		},
=20
-		"PSEUDO": function( pseudo, argument ) {
+		PSEUDO: function( pseudo, argument ) {
+
 			// pseudo-class names are case-insensitive
-			// http://www.w3.org/TR/selectors/#pseudo-classes
+			// https://www.w3.org/TR/selectors/#pseudo-classes
 			// Prioritize by case sensitivity in case custom pseudos are added with=
 uppercase letters
 			// Remember that setFilters inherits from pseudos
 			var args,
 				fn =3D Expr.pseudos[ pseudo ] || Expr.setFilters[ pseudo.toLowerCase()=
 ] ||
-					Sizzle.error( "unsupported pseudo: " + pseudo );
+					find.error( "unsupported pseudo: " + pseudo );
=20
 			// The user may use createPseudo to indicate that
 			// arguments are needed to create the filter function
-			// just as Sizzle does
+			// just as jQuery does
 			if ( fn[ expando ] ) {
 				return fn( argument );
 			}
@@ -1917,15 +1831,15 @@ Expr =3D Sizzle.selectors =3D {
 			if ( fn.length > 1 ) {
 				args =3D [ pseudo, pseudo, "", argument ];
 				return Expr.setFilters.hasOwnProperty( pseudo.toLowerCase() ) ?
-					markFunction(function( seed, matches ) {
+					markFunction( function( seed, matches ) {
 						var idx,
 							matched =3D fn( seed, argument ),
 							i =3D matched.length;
 						while ( i-- ) {
-							idx =3D indexOf( seed, matched[i] );
-							seed[ idx ] =3D !( matches[ idx ] =3D matched[i] );
+							idx =3D indexOf.call( seed, matched[ i ] );
+							seed[ idx ] =3D !( matches[ idx ] =3D matched[ i ] );
 						}
-					}) :
+					} ) :
 					function( elem ) {
 						return fn( elem, 0, args );
 					};
@@ -1936,49 +1850,53 @@ Expr =3D Sizzle.selectors =3D {
 	},
=20
 	pseudos: {
+
 		// Potentially complex pseudos
-		"not": markFunction(function( selector ) {
+		not: markFunction( function( selector ) {
+
 			// Trim the selector passed to compile
 			// to avoid treating leading and trailing
 			// spaces as combinators
 			var input =3D [],
 				results =3D [],
-				matcher =3D compile( selector.replace( rtrim, "$1" ) );
+				matcher =3D compile( selector.replace( rtrimCSS, "$1" ) );
=20
 			return matcher[ expando ] ?
-				markFunction(function( seed, matches, context, xml ) {
+				markFunction( function( seed, matches, _context, xml ) {
 					var elem,
 						unmatched =3D matcher( seed, null, xml, [] ),
 						i =3D seed.length;
=20
 					// Match elements unmatched by `matcher`
 					while ( i-- ) {
-						if ( (elem =3D unmatched[i]) ) {
-							seed[i] =3D !(matches[i] =3D elem);
+						if ( ( elem =3D unmatched[ i ] ) ) {
+							seed[ i ] =3D !( matches[ i ] =3D elem );
 						}
 					}
-				}) :
-				function( elem, context, xml ) {
-					input[0] =3D elem;
+				} ) :
+				function( elem, _context, xml ) {
+					input[ 0 ] =3D elem;
 					matcher( input, null, xml, results );
-					// Don't keep the element (issue #299)
-					input[0] =3D null;
+
+					// Don't keep the element
+					// (see https://github.com/jquery/sizzle/issues/299)
+					input[ 0 ] =3D null;
 					return !results.pop();
 				};
-		}),
+		} ),
=20
-		"has": markFunction(function( selector ) {
+		has: markFunction( function( selector ) {
 			return function( elem ) {
-				return Sizzle( selector, elem ).length > 0;
+				return find( selector, elem ).length > 0;
 			};
-		}),
+		} ),
=20
-		"contains": markFunction(function( text ) {
+		contains: markFunction( function( text ) {
 			text =3D text.replace( runescape, funescape );
 			return function( elem ) {
-				return ( elem.textContent || getText( elem ) ).indexOf( text ) > -1;
+				return ( elem.textContent || jQuery.text( elem ) ).indexOf( text ) > -=
1;
 			};
-		}),
+		} ),
=20
 		// "Whether an element is represented by a :lang() selector
 		// is based solely on the element's language value
@@ -1986,57 +1904,65 @@ Expr =3D Sizzle.selectors =3D {
 		// or beginning with the identifier C immediately followed by "-".
 		// The matching of C against the element's language value is performed c=
ase-insensitively.
 		// The identifier C does not have to be a valid language name."
-		// http://www.w3.org/TR/selectors/#lang-pseudo
-		"lang": markFunction( function( lang ) {
+		// https://www.w3.org/TR/selectors/#lang-pseudo
+		lang: markFunction( function( lang ) {
+
 			// lang value must be a valid identifier
-			if ( !ridentifier.test(lang || "") ) {
-				Sizzle.error( "unsupported lang: " + lang );
+			if ( !ridentifier.test( lang || "" ) ) {
+				find.error( "unsupported lang: " + lang );
 			}
 			lang =3D lang.replace( runescape, funescape ).toLowerCase();
 			return function( elem ) {
 				var elemLang;
 				do {
-					if ( (elemLang =3D documentIsHTML ?
+					if ( ( elemLang =3D documentIsHTML ?
 						elem.lang :
-						elem.getAttribute("xml:lang") || elem.getAttribute("lang")) ) {
+						elem.getAttribute( "xml:lang" ) || elem.getAttribute( "lang" ) ) ) {
=20
 						elemLang =3D elemLang.toLowerCase();
 						return elemLang =3D=3D=3D lang || elemLang.indexOf( lang + "-" ) =3D=
=3D=3D 0;
 					}
-				} while ( (elem =3D elem.parentNode) && elem.nodeType =3D=3D=3D 1 );
+				} while ( ( elem =3D elem.parentNode ) && elem.nodeType =3D=3D=3D 1 );
 				return false;
 			};
-		}),
+		} ),
=20
 		// Miscellaneous
-		"target": function( elem ) {
+		target: function( elem ) {
 			var hash =3D window.location && window.location.hash;
 			return hash && hash.slice( 1 ) =3D=3D=3D elem.id;
 		},
=20
-		"root": function( elem ) {
-			return elem =3D=3D=3D docElem;
+		root: function( elem ) {
+			return elem =3D=3D=3D documentElement;
 		},
=20
-		"focus": function( elem ) {
-			return elem =3D=3D=3D document.activeElement && (!document.hasFocus || =
document.hasFocus()) && !!(elem.type || elem.href || ~elem.tabIndex);
+		focus: function( elem ) {
+			return elem =3D=3D=3D safeActiveElement() &&
+				document.hasFocus() &&
+				!!( elem.type || elem.href || ~elem.tabIndex );
 		},
=20
 		// Boolean properties
-		"enabled": createDisabledPseudo( false ),
-		"disabled": createDisabledPseudo( true ),
+		enabled: createDisabledPseudo( false ),
+		disabled: createDisabledPseudo( true ),
+
+		checked: function( elem ) {
=20
-		"checked": function( elem ) {
 			// In CSS3, :checked should return both checked and selected elements
-			// http://www.w3.org/TR/2011/REC-css3-selectors-20110929/#checked
-			var nodeName =3D elem.nodeName.toLowerCase();
-			return (nodeName =3D=3D=3D "input" && !!elem.checked) || (nodeName =3D=
=3D=3D "option" && !!elem.selected);
+			// https://www.w3.org/TR/2011/REC-css3-selectors-20110929/#checked
+			return ( nodeName( elem, "input" ) && !!elem.checked ) ||
+				( nodeName( elem, "option" ) && !!elem.selected );
 		},
=20
-		"selected": function( elem ) {
-			// Accessing this property makes selected-by-default
-			// options in Safari work properly
+		selected: function( elem ) {
+
+			// Support: IE <=3D11+
+			// Accessing the selectedIndex property
+			// forces the browser to treat the default option as
+			// selected when in an optgroup.
 			if ( elem.parentNode ) {
+				// eslint-disable-next-line no-unused-expressions
 				elem.parentNode.selectedIndex;
 			}
=20
@@ -2044,8 +1970,9 @@ Expr =3D Sizzle.selectors =3D {
 		},
=20
 		// Contents
-		"empty": function( elem ) {
-			// http://www.w3.org/TR/selectors/#empty-pseudo
+		empty: function( elem ) {
+
+			// https://www.w3.org/TR/selectors/#empty-pseudo
 			// :empty is negated by element (1) or content nodes (text: 3; cdata: 4=
; entity ref: 5),
 			//   but not by others (comment: 8; processing instruction: 7; etc.)
 			// nodeType < 6 works because attributes (2) do not appear as children
@@ -2057,86 +1984,92 @@ Expr =3D Sizzle.selectors =3D {
 			return true;
 		},
=20
-		"parent": function( elem ) {
-			return !Expr.pseudos["empty"]( elem );
+		parent: function( elem ) {
+			return !Expr.pseudos.empty( elem );
 		},
=20
 		// Element/input types
-		"header": function( elem ) {
+		header: function( elem ) {
 			return rheader.test( elem.nodeName );
 		},
=20
-		"input": function( elem ) {
+		input: function( elem ) {
 			return rinputs.test( elem.nodeName );
 		},
=20
-		"button": function( elem ) {
-			var name =3D elem.nodeName.toLowerCase();
-			return name =3D=3D=3D "input" && elem.type =3D=3D=3D "button" || name =
=3D=3D=3D "button";
+		button: function( elem ) {
+			return nodeName( elem, "input" ) && elem.type =3D=3D=3D "button" ||
+				nodeName( elem, "button" );
 		},
=20
-		"text": function( elem ) {
+		text: function( elem ) {
 			var attr;
-			return elem.nodeName.toLowerCase() =3D=3D=3D "input" &&
-				elem.type =3D=3D=3D "text" &&
+			return nodeName( elem, "input" ) && elem.type =3D=3D=3D "text" &&
=20
-				// Support: IE<8
-				// New HTML5 attribute values (e.g., "search") appear with elem.type =
=3D=3D=3D "text"
-				( (attr =3D elem.getAttribute("type")) =3D=3D null || attr.toLowerCase=
() =3D=3D=3D "text" );
+				// Support: IE <10 only
+				// New HTML5 attribute values (e.g., "search") appear
+				// with elem.type =3D=3D=3D "text"
+				( ( attr =3D elem.getAttribute( "type" ) ) =3D=3D null ||
+					attr.toLowerCase() =3D=3D=3D "text" );
 		},
=20
 		// Position-in-collection
-		"first": createPositionalPseudo(function() {
+		first: createPositionalPseudo( function() {
 			return [ 0 ];
-		}),
+		} ),
=20
-		"last": createPositionalPseudo(function( matchIndexes, length ) {
+		last: createPositionalPseudo( function( _matchIndexes, length ) {
 			return [ length - 1 ];
-		}),
+		} ),
=20
-		"eq": createPositionalPseudo(function( matchIndexes, length, argument ) {
+		eq: createPositionalPseudo( function( _matchIndexes, length, argument ) {
 			return [ argument < 0 ? argument + length : argument ];
-		}),
+		} ),
=20
-		"even": createPositionalPseudo(function( matchIndexes, length ) {
+		even: createPositionalPseudo( function( matchIndexes, length ) {
 			var i =3D 0;
 			for ( ; i < length; i +=3D 2 ) {
 				matchIndexes.push( i );
 			}
 			return matchIndexes;
-		}),
+		} ),
=20
-		"odd": createPositionalPseudo(function( matchIndexes, length ) {
+		odd: createPositionalPseudo( function( matchIndexes, length ) {
 			var i =3D 1;
 			for ( ; i < length; i +=3D 2 ) {
 				matchIndexes.push( i );
 			}
 			return matchIndexes;
-		}),
-
-		"lt": createPositionalPseudo(function( matchIndexes, length, argument ) {
-			var i =3D argument < 0 ?
-				argument + length :
-				argument > length ?
-					length :
-					argument;
+		} ),
+
+		lt: createPositionalPseudo( function( matchIndexes, length, argument ) {
+			var i;
+
+			if ( argument < 0 ) {
+				i =3D argument + length;
+			} else if ( argument > length ) {
+				i =3D length;
+			} else {
+				i =3D argument;
+			}
+
 			for ( ; --i >=3D 0; ) {
 				matchIndexes.push( i );
 			}
 			return matchIndexes;
-		}),
+		} ),
=20
-		"gt": createPositionalPseudo(function( matchIndexes, length, argument ) {
+		gt: createPositionalPseudo( function( matchIndexes, length, argument ) {
 			var i =3D argument < 0 ? argument + length : argument;
 			for ( ; ++i < length; ) {
 				matchIndexes.push( i );
 			}
 			return matchIndexes;
-		})
+		} )
 	}
 };
=20
-Expr.pseudos["nth"] =3D Expr.pseudos["eq"];
+Expr.pseudos.nth =3D Expr.pseudos.eq;
=20
 // Add button/input type pseudos
 for ( i in { radio: true, checkbox: true, file: true, password: true, imag=
e: true } ) {
@@ -2151,7 +2084,7 @@ function setFilters() {}
 setFilters.prototype =3D Expr.filters =3D Expr.pseudos;
 Expr.setFilters =3D new setFilters();
=20
-tokenize =3D Sizzle.tokenize =3D function( selector, parseOnly ) {
+function tokenize( selector, parseOnly ) {
 	var matched, match, tokens, type,
 		soFar, groups, preFilters,
 		cached =3D tokenCache[ selector + " " ];
@@ -2167,37 +2100,39 @@ tokenize =3D Sizzle.tokenize =3D function( selector=
, parseOnly ) {
 	while ( soFar ) {
=20
 		// Comma and first run
-		if ( !matched || (match =3D rcomma.exec( soFar )) ) {
+		if ( !matched || ( match =3D rcomma.exec( soFar ) ) ) {
 			if ( match ) {
+
 				// Don't consume trailing commas as valid
-				soFar =3D soFar.slice( match[0].length ) || soFar;
+				soFar =3D soFar.slice( match[ 0 ].length ) || soFar;
 			}
-			groups.push( (tokens =3D []) );
+			groups.push( ( tokens =3D [] ) );
 		}
=20
 		matched =3D false;
=20
 		// Combinators
-		if ( (match =3D rcombinators.exec( soFar )) ) {
+		if ( ( match =3D rleadingCombinator.exec( soFar ) ) ) {
 			matched =3D match.shift();
-			tokens.push({
+			tokens.push( {
 				value: matched,
+
 				// Cast descendant combinators to space
-				type: match[0].replace( rtrim, " " )
-			});
+				type: match[ 0 ].replace( rtrimCSS, " " )
+			} );
 			soFar =3D soFar.slice( matched.length );
 		}
=20
 		// Filters
 		for ( type in Expr.filter ) {
-			if ( (match =3D matchExpr[ type ].exec( soFar )) && (!preFilters[ type =
] ||
-				(match =3D preFilters[ type ]( match ))) ) {
+			if ( ( match =3D matchExpr[ type ].exec( soFar ) ) && ( !preFilters[ ty=
pe ] ||
+				( match =3D preFilters[ type ]( match ) ) ) ) {
 				matched =3D match.shift();
-				tokens.push({
+				tokens.push( {
 					value: matched,
 					type: type,
 					matches: match
-				});
+				} );
 				soFar =3D soFar.slice( matched.length );
 			}
 		}
@@ -2210,20 +2145,23 @@ tokenize =3D Sizzle.tokenize =3D function( selector=
, parseOnly ) {
 	// Return the length of the invalid excess
 	// if we're just parsing
 	// Otherwise, throw an error or return tokens
-	return parseOnly ?
-		soFar.length :
-		soFar ?
-			Sizzle.error( selector ) :
-			// Cache the tokens
-			tokenCache( selector, groups ).slice( 0 );
-};
+	if ( parseOnly ) {
+		return soFar.length;
+	}
+
+	return soFar ?
+		find.error( selector ) :
+
+		// Cache the tokens
+		tokenCache( selector, groups ).slice( 0 );
+}
=20
 function toSelector( tokens ) {
 	var i =3D 0,
 		len =3D tokens.length,
 		selector =3D "";
 	for ( ; i < len; i++ ) {
-		selector +=3D tokens[i].value;
+		selector +=3D tokens[ i ].value;
 	}
 	return selector;
 }
@@ -2236,9 +2174,10 @@ function addCombinator( matcher, combinator, base ) {
 		doneName =3D done++;
=20
 	return combinator.first ?
+
 		// Check against closest ancestor/preceding element
 		function( elem, context, xml ) {
-			while ( (elem =3D elem[ dir ]) ) {
+			while ( ( elem =3D elem[ dir ] ) ) {
 				if ( elem.nodeType =3D=3D=3D 1 || checkNonElements ) {
 					return matcher( elem, context, xml );
 				}
@@ -2248,12 +2187,12 @@ function addCombinator( matcher, combinator, base )=
 {
=20
 		// Check against all ancestor/preceding elements
 		function( elem, context, xml ) {
-			var oldCache, uniqueCache, outerCache,
+			var oldCache, outerCache,
 				newCache =3D [ dirruns, doneName ];
=20
 			// We can't set arbitrary data on XML nodes, so they don't benefit from=
 combinator caching
 			if ( xml ) {
-				while ( (elem =3D elem[ dir ]) ) {
+				while ( ( elem =3D elem[ dir ] ) ) {
 					if ( elem.nodeType =3D=3D=3D 1 || checkNonElements ) {
 						if ( matcher( elem, context, xml ) ) {
 							return true;
@@ -2261,27 +2200,24 @@ function addCombinator( matcher, combinator, base )=
 {
 					}
 				}
 			} else {
-				while ( (elem =3D elem[ dir ]) ) {
+				while ( ( elem =3D elem[ dir ] ) ) {
 					if ( elem.nodeType =3D=3D=3D 1 || checkNonElements ) {
-						outerCache =3D elem[ expando ] || (elem[ expando ] =3D {});
-
-						// Support: IE <9 only
-						// Defend against cloned attroperties (jQuery gh-1709)
-						uniqueCache =3D outerCache[ elem.uniqueID ] || (outerCache[ elem.uni=
queID ] =3D {});
+						outerCache =3D elem[ expando ] || ( elem[ expando ] =3D {} );
=20
-						if ( skip && skip =3D=3D=3D elem.nodeName.toLowerCase() ) {
+						if ( skip && nodeName( elem, skip ) ) {
 							elem =3D elem[ dir ] || elem;
-						} else if ( (oldCache =3D uniqueCache[ key ]) &&
+						} else if ( ( oldCache =3D outerCache[ key ] ) &&
 							oldCache[ 0 ] =3D=3D=3D dirruns && oldCache[ 1 ] =3D=3D=3D doneName=
 ) {
=20
 							// Assign to newCache so results back-propagate to previous elements
-							return (newCache[ 2 ] =3D oldCache[ 2 ]);
+							return ( newCache[ 2 ] =3D oldCache[ 2 ] );
 						} else {
+
 							// Reuse newcache so results back-propagate to previous elements
-							uniqueCache[ key ] =3D newCache;
+							outerCache[ key ] =3D newCache;
=20
 							// A match means we're done; a fail means we have to keep checking
-							if ( (newCache[ 2 ] =3D matcher( elem, context, xml )) ) {
+							if ( ( newCache[ 2 ] =3D matcher( elem, context, xml ) ) ) {
 								return true;
 							}
 						}
@@ -2297,20 +2233,20 @@ function elementMatcher( matchers ) {
 		function( elem, context, xml ) {
 			var i =3D matchers.length;
 			while ( i-- ) {
-				if ( !matchers[i]( elem, context, xml ) ) {
+				if ( !matchers[ i ]( elem, context, xml ) ) {
 					return false;
 				}
 			}
 			return true;
 		} :
-		matchers[0];
+		matchers[ 0 ];
 }
=20
 function multipleContexts( selector, contexts, results ) {
 	var i =3D 0,
 		len =3D contexts.length;
 	for ( ; i < len; i++ ) {
-		Sizzle( selector, contexts[i], results );
+		find( selector, contexts[ i ], results );
 	}
 	return results;
 }
@@ -2323,7 +2259,7 @@ function condense( unmatched, map, filter, context, x=
ml ) {
 		mapped =3D map !=3D null;
=20
 	for ( ; i < len; i++ ) {
-		if ( (elem =3D unmatched[i]) ) {
+		if ( ( elem =3D unmatched[ i ] ) ) {
 			if ( !filter || filter( elem, context, xml ) ) {
 				newUnmatched.push( elem );
 				if ( mapped ) {
@@ -2343,34 +2279,38 @@ function setMatcher( preFilter, selector, matcher, =
postFilter, postFinder, postS
 	if ( postFinder && !postFinder[ expando ] ) {
 		postFinder =3D setMatcher( postFinder, postSelector );
 	}
-	return markFunction(function( seed, results, context, xml ) {
-		var temp, i, elem,
+	return markFunction( function( seed, results, context, xml ) {
+		var temp, i, elem, matcherOut,
 			preMap =3D [],
 			postMap =3D [],
 			preexisting =3D results.length,
=20
 			// Get initial elements from seed or context
-			elems =3D seed || multipleContexts( selector || "*", context.nodeType ?=
 [ context ] : context, [] ),
+			elems =3D seed ||
+				multipleContexts( selector || "*",
+					context.nodeType ? [ context ] : context, [] ),
=20
 			// Prefilter to get matcher input, preserving a map for seed-results sy=
nchronization
 			matcherIn =3D preFilter && ( seed || !selector ) ?
 				condense( elems, preMap, preFilter, context, xml ) :
-				elems,
+				elems;
+
+		if ( matcher ) {
=20
-			matcherOut =3D matcher ?
-				// If we have a postFinder, or filtered seed, or non-seed postFilter o=
r preexisting results,
-				postFinder || ( seed ? preFilter : preexisting || postFilter ) ?
+			// If we have a postFinder, or filtered seed, or non-seed postFilter
+			// or preexisting results,
+			matcherOut =3D postFinder || ( seed ? preFilter : preexisting || postFi=
lter ) ?
=20
-					// ...intermediate processing is necessary
-					[] :
+				// ...intermediate processing is necessary
+				[] :
=20
-					// ...otherwise use results directly
-					results :
-				matcherIn;
+				// ...otherwise use results directly
+				results;
=20
-		// Find primary matches
-		if ( matcher ) {
+			// Find primary matches
 			matcher( matcherIn, matcherOut, context, xml );
+		} else {
+			matcherOut =3D matcherIn;
 		}
=20
 		// Apply postFilter
@@ -2381,8 +2321,8 @@ function setMatcher( preFilter, selector, matcher, po=
stFilter, postFinder, postS
 			// Un-match failing elements by moving them back to matcherIn
 			i =3D temp.length;
 			while ( i-- ) {
-				if ( (elem =3D temp[i]) ) {
-					matcherOut[ postMap[i] ] =3D !(matcherIn[ postMap[i] ] =3D elem);
+				if ( ( elem =3D temp[ i ] ) ) {
+					matcherOut[ postMap[ i ] ] =3D !( matcherIn[ postMap[ i ] ] =3D elem =
);
 				}
 			}
 		}
@@ -2390,25 +2330,27 @@ function setMatcher( preFilter, selector, matcher, =
postFilter, postFinder, postS
 		if ( seed ) {
 			if ( postFinder || preFilter ) {
 				if ( postFinder ) {
+
 					// Get the final matcherOut by condensing this intermediate into post=
Finder contexts
 					temp =3D [];
 					i =3D matcherOut.length;
 					while ( i-- ) {
-						if ( (elem =3D matcherOut[i]) ) {
+						if ( ( elem =3D matcherOut[ i ] ) ) {
+
 							// Restore matcherIn since elem is not yet a final match
-							temp.push( (matcherIn[i] =3D elem) );
+							temp.push( ( matcherIn[ i ] =3D elem ) );
 						}
 					}
-					postFinder( null, (matcherOut =3D []), temp, xml );
+					postFinder( null, ( matcherOut =3D [] ), temp, xml );
 				}
=20
 				// Move matched elements from seed to results to keep them synchronized
 				i =3D matcherOut.length;
 				while ( i-- ) {
-					if ( (elem =3D matcherOut[i]) &&
-						(temp =3D postFinder ? indexOf( seed, elem ) : preMap[i]) > -1 ) {
+					if ( ( elem =3D matcherOut[ i ] ) &&
+						( temp =3D postFinder ? indexOf.call( seed, elem ) : preMap[ i ] ) >=
 -1 ) {
=20
-						seed[temp] =3D !(results[temp] =3D elem);
+						seed[ temp ] =3D !( results[ temp ] =3D elem );
 					}
 				}
 			}
@@ -2426,14 +2368,14 @@ function setMatcher( preFilter, selector, matcher, =
postFilter, postFinder, postS
 				push.apply( results, matcherOut );
 			}
 		}
-	});
+	} );
 }
=20
 function matcherFromTokens( tokens ) {
 	var checkContext, matcher, j,
 		len =3D tokens.length,
-		leadingRelative =3D Expr.relative[ tokens[0].type ],
-		implicitRelative =3D leadingRelative || Expr.relative[" "],
+		leadingRelative =3D Expr.relative[ tokens[ 0 ].type ],
+		implicitRelative =3D leadingRelative || Expr.relative[ " " ],
 		i =3D leadingRelative ? 1 : 0,
=20
 		// The foundational matcher ensures that elements are reachable from top=
-level context(s)
@@ -2441,42 +2383,52 @@ function matcherFromTokens( tokens ) {
 			return elem =3D=3D=3D checkContext;
 		}, implicitRelative, true ),
 		matchAnyContext =3D addCombinator( function( elem ) {
-			return indexOf( checkContext, elem ) > -1;
+			return indexOf.call( checkContext, elem ) > -1;
 		}, implicitRelative, true ),
 		matchers =3D [ function( elem, context, xml ) {
-			var ret =3D ( !leadingRelative && ( xml || context !=3D=3D outermostCon=
text ) ) || (
-				(checkContext =3D context).nodeType ?
+
+			// Support: IE 11+, Edge 17 - 18+
+			// IE/Edge sometimes throw a "Permission denied" error when strict-comp=
aring
+			// two documents; shallow comparisons work.
+			// eslint-disable-next-line eqeqeq
+			var ret =3D ( !leadingRelative && ( xml || context !=3D outermostContex=
t ) ) || (
+				( checkContext =3D context ).nodeType ?
 					matchContext( elem, context, xml ) :
 					matchAnyContext( elem, context, xml ) );
-			// Avoid hanging onto element (issue #299)
+
+			// Avoid hanging onto element
+			// (see https://github.com/jquery/sizzle/issues/299)
 			checkContext =3D null;
 			return ret;
 		} ];
=20
 	for ( ; i < len; i++ ) {
-		if ( (matcher =3D Expr.relative[ tokens[i].type ]) ) {
-			matchers =3D [ addCombinator(elementMatcher( matchers ), matcher) ];
+		if ( ( matcher =3D Expr.relative[ tokens[ i ].type ] ) ) {
+			matchers =3D [ addCombinator( elementMatcher( matchers ), matcher ) ];
 		} else {
-			matcher =3D Expr.filter[ tokens[i].type ].apply( null, tokens[i].matche=
s );
+			matcher =3D Expr.filter[ tokens[ i ].type ].apply( null, tokens[ i ].ma=
tches );
=20
 			// Return special upon seeing a positional matcher
 			if ( matcher[ expando ] ) {
+
 				// Find the next relative operator (if any) for proper handling
 				j =3D ++i;
 				for ( ; j < len; j++ ) {
-					if ( Expr.relative[ tokens[j].type ] ) {
+					if ( Expr.relative[ tokens[ j ].type ] ) {
 						break;
 					}
 				}
 				return setMatcher(
 					i > 1 && elementMatcher( matchers ),
 					i > 1 && toSelector(
+
 						// If the preceding token was a descendant combinator, insert an imp=
licit any-element `*`
-						tokens.slice( 0, i - 1 ).concat({ value: tokens[ i - 2 ].type =3D=3D=
=3D " " ? "*" : "" })
-					).replace( rtrim, "$1" ),
+						tokens.slice( 0, i - 1 )
+							.concat( { value: tokens[ i - 2 ].type =3D=3D=3D " " ? "*" : "" } )
+					).replace( rtrimCSS, "$1" ),
 					matcher,
 					i < j && matcherFromTokens( tokens.slice( i, j ) ),
-					j < len && matcherFromTokens( (tokens =3D tokens.slice( j )) ),
+					j < len && matcherFromTokens( ( tokens =3D tokens.slice( j ) ) ),
 					j < len && toSelector( tokens )
 				);
 			}
@@ -2497,29 +2449,42 @@ function matcherFromGroupMatchers( elementMatchers,=
 setMatchers ) {
 				unmatched =3D seed && [],
 				setMatched =3D [],
 				contextBackup =3D outermostContext,
+
 				// We must always have either seed elements or outermost context
-				elems =3D seed || byElement && Expr.find["TAG"]( "*", outermost ),
+				elems =3D seed || byElement && Expr.find.TAG( "*", outermost ),
+
 				// Use integer dirruns iff this is the outermost matcher
-				dirrunsUnique =3D (dirruns +=3D contextBackup =3D=3D null ? 1 : Math.r=
andom() || 0.1),
+				dirrunsUnique =3D ( dirruns +=3D contextBackup =3D=3D null ? 1 : Math.=
random() || 0.1 ),
 				len =3D elems.length;
=20
 			if ( outermost ) {
-				outermostContext =3D context =3D=3D=3D document || context || outermos=
t;
+
+				// Support: IE 11+, Edge 17 - 18+
+				// IE/Edge sometimes throw a "Permission denied" error when strict-com=
paring
+				// two documents; shallow comparisons work.
+				// eslint-disable-next-line eqeqeq
+				outermostContext =3D context =3D=3D document || context || outermost;
 			}
=20
 			// Add elements passing elementMatchers directly to results
-			// Support: IE<9, Safari
-			// Tolerate NodeList properties (IE: "length"; Safari: <number>) matchi=
ng elements by id
-			for ( ; i !=3D=3D len && (elem =3D elems[i]) !=3D null; i++ ) {
+			// Support: iOS <=3D7 - 9 only
+			// Tolerate NodeList properties (IE: "length"; Safari: <number>) matchi=
ng
+			// elements by id. (see trac-14142)
+			for ( ; i !=3D=3D len && ( elem =3D elems[ i ] ) !=3D null; i++ ) {
 				if ( byElement && elem ) {
 					j =3D 0;
-					if ( !context && elem.ownerDocument !=3D=3D document ) {
+
+					// Support: IE 11+, Edge 17 - 18+
+					// IE/Edge sometimes throw a "Permission denied" error when strict-co=
mparing
+					// two documents; shallow comparisons work.
+					// eslint-disable-next-line eqeqeq
+					if ( !context && elem.ownerDocument !=3D document ) {
 						setDocument( elem );
 						xml =3D !documentIsHTML;
 					}
-					while ( (matcher =3D elementMatchers[j++]) ) {
-						if ( matcher( elem, context || document, xml) ) {
-							results.push( elem );
+					while ( ( matcher =3D elementMatchers[ j++ ] ) ) {
+						if ( matcher( elem, context || document, xml ) ) {
+							push.call( results, elem );
 							break;
 						}
 					}
@@ -2530,8 +2495,9 @@ function matcherFromGroupMatchers( elementMatchers, s=
etMatchers ) {
=20
 				// Track unmatched elements for set filters
 				if ( bySet ) {
+
 					// They will have gone through all possible matchers
-					if ( (elem =3D !matcher && elem) ) {
+					if ( ( elem =3D !matcher && elem ) ) {
 						matchedCount--;
 					}
=20
@@ -2555,16 +2521,17 @@ function matcherFromGroupMatchers( elementMatchers,=
 setMatchers ) {
 			// numerically zero.
 			if ( bySet && i !=3D=3D matchedCount ) {
 				j =3D 0;
-				while ( (matcher =3D setMatchers[j++]) ) {
+				while ( ( matcher =3D setMatchers[ j++ ] ) ) {
 					matcher( unmatched, setMatched, context, xml );
 				}
=20
 				if ( seed ) {
+
 					// Reintegrate element matches to eliminate the need for sorting
 					if ( matchedCount > 0 ) {
 						while ( i-- ) {
-							if ( !(unmatched[i] || setMatched[i]) ) {
-								setMatched[i] =3D pop.call( results );
+							if ( !( unmatched[ i ] || setMatched[ i ] ) ) {
+								setMatched[ i ] =3D pop.call( results );
 							}
 						}
 					}
@@ -2580,7 +2547,7 @@ function matcherFromGroupMatchers( elementMatchers, s=
etMatchers ) {
 				if ( outermost && !seed && setMatched.length > 0 &&
 					( matchedCount + setMatchers.length ) > 1 ) {
=20
-					Sizzle.uniqueSort( results );
+					jQuery.uniqueSort( results );
 				}
 			}
=20
@@ -2598,20 +2565,21 @@ function matcherFromGroupMatchers( elementMatchers,=
 setMatchers ) {
 		superMatcher;
 }
=20
-compile =3D Sizzle.compile =3D function( selector, match /* Internal Use O=
nly */ ) {
+function compile( selector, match /* Internal Use Only */ ) {
 	var i,
 		setMatchers =3D [],
 		elementMatchers =3D [],
 		cached =3D compilerCache[ selector + " " ];
=20
 	if ( !cached ) {
+
 		// Generate a function of recursive functions that can be used to check =
each element
 		if ( !match ) {
 			match =3D tokenize( selector );
 		}
 		i =3D match.length;
 		while ( i-- ) {
-			cached =3D matcherFromTokens( match[i] );
+			cached =3D matcherFromTokens( match[ i ] );
 			if ( cached[ expando ] ) {
 				setMatchers.push( cached );
 			} else {
@@ -2620,27 +2588,28 @@ compile =3D Sizzle.compile =3D function( selector, =
match /* Internal Use Only */ ) {
 		}
=20
 		// Cache the compiled function
-		cached =3D compilerCache( selector, matcherFromGroupMatchers( elementMat=
chers, setMatchers ) );
+		cached =3D compilerCache( selector,
+			matcherFromGroupMatchers( elementMatchers, setMatchers ) );
=20
 		// Save selector and tokenization
 		cached.selector =3D selector;
 	}
 	return cached;
-};
+}
=20
 /**
- * A low-level selection function that works with Sizzle's compiled
+ * A low-level selection function that works with jQuery's compiled
  *  selector functions
  * @param {String|Function} selector A selector or a pre-compiled
- *  selector function built with Sizzle.compile
+ *  selector function built with jQuery selector compile
  * @param {Element} context
  * @param {Array} [results]
  * @param {Array} [seed] A set of elements to match against
  */
-select =3D Sizzle.select =3D function( selector, context, results, seed ) {
+function select( selector, context, results, seed ) {
 	var i, tokens, token, type, find,
 		compiled =3D typeof selector =3D=3D=3D "function" && selector,
-		match =3D !seed && tokenize( (selector =3D compiled.selector || selector=
) );
+		match =3D !seed && tokenize( ( selector =3D compiled.selector || selecto=
r ) );
=20
 	results =3D results || [];
=20
@@ -2649,11 +2618,14 @@ select =3D Sizzle.select =3D function( selector, co=
ntext, results, seed ) {
 	if ( match.length =3D=3D=3D 1 ) {
=20
 		// Reduce context if the leading compound selector is an ID
-		tokens =3D match[0] =3D match[0].slice( 0 );
-		if ( tokens.length > 2 && (token =3D tokens[0]).type =3D=3D=3D "ID" &&
-				context.nodeType =3D=3D=3D 9 && documentIsHTML && Expr.relative[ token=
s[1].type ] ) {
-
-			context =3D ( Expr.find["ID"]( token.matches[0].replace(runescape, fune=
scape), context ) || [] )[0];
+		tokens =3D match[ 0 ] =3D match[ 0 ].slice( 0 );
+		if ( tokens.length > 2 && ( token =3D tokens[ 0 ] ).type =3D=3D=3D "ID" =
&&
+				context.nodeType =3D=3D=3D 9 && documentIsHTML && Expr.relative[ token=
s[ 1 ].type ] ) {
+
+			context =3D ( Expr.find.ID(
+				token.matches[ 0 ].replace( runescape, funescape ),
+				context
+			) || [] )[ 0 ];
 			if ( !context ) {
 				return results;
=20
@@ -2666,20 +2638,22 @@ select =3D Sizzle.select =3D function( selector, co=
ntext, results, seed ) {
 		}
=20
 		// Fetch a seed set for right-to-left matching
-		i =3D matchExpr["needsContext"].test( selector ) ? 0 : tokens.length;
+		i =3D matchExpr.needsContext.test( selector ) ? 0 : tokens.length;
 		while ( i-- ) {
-			token =3D tokens[i];
+			token =3D tokens[ i ];
=20
 			// Abort if we hit a combinator
-			if ( Expr.relative[ (type =3D token.type) ] ) {
+			if ( Expr.relative[ ( type =3D token.type ) ] ) {
 				break;
 			}
-			if ( (find =3D Expr.find[ type ]) ) {
+			if ( ( find =3D Expr.find[ type ] ) ) {
+
 				// Search, expanding context for leading sibling combinators
-				if ( (seed =3D find(
-					token.matches[0].replace( runescape, funescape ),
-					rsibling.test( tokens[0].type ) && testContext( context.parentNode ) =
|| context
-				)) ) {
+				if ( ( seed =3D find(
+					token.matches[ 0 ].replace( runescape, funescape ),
+					rsibling.test( tokens[ 0 ].type ) &&
+						testContext( context.parentNode ) || context
+				) ) ) {
=20
 					// If seed is empty or no tokens remain, we can return early
 					tokens.splice( i, 1 );
@@ -2705,89 +2679,48 @@ select =3D Sizzle.select =3D function( selector, co=
ntext, results, seed ) {
 		!context || rsibling.test( selector ) && testContext( context.parentNode=
 ) || context
 	);
 	return results;
-};
+}
=20
 // One-time assignments
=20
+// Support: Android <=3D4.0 - 4.1+
 // Sort stability
-support.sortStable =3D expando.split("").sort( sortOrder ).join("") =3D=3D=
=3D expando;
-
-// Support: Chrome 14-35+
-// Always assume duplicates if they aren't passed to the comparison functi=
on
-support.detectDuplicates =3D !!hasDuplicate;
+support.sortStable =3D expando.split( "" ).sort( sortOrder ).join( "" ) =
=3D=3D=3D expando;
=20
 // Initialize against the default document
 setDocument();
=20
-// Support: Webkit<537.32 - Safari 6.0.3/Chrome 25 (fixed in Chrome 27)
+// Support: Android <=3D4.0 - 4.1+
 // Detached nodes confoundingly follow *each other*
-support.sortDetached =3D assert(function( el ) {
-	// Should return 1, but returns 4 (following)
-	return el.compareDocumentPosition( document.createElement("fieldset") ) &=
 1;
-});
-
-// Support: IE<8
-// Prevent attribute/property "interpolation"
-// https://msdn.microsoft.com/en-us/library/ms536429%28VS.85%29.aspx
-if ( !assert(function( el ) {
-	el.innerHTML =3D "<a href=3D'#'></a>";
-	return el.firstChild.getAttribute("href") =3D=3D=3D "#" ;
-}) ) {
-	addHandle( "type|href|height|width", function( elem, name, isXML ) {
-		if ( !isXML ) {
-			return elem.getAttribute( name, name.toLowerCase() =3D=3D=3D "type" ? 1=
 : 2 );
-		}
-	});
-}
-
-// Support: IE<9
-// Use defaultValue in place of getAttribute("value")
-if ( !support.attributes || !assert(function( el ) {
-	el.innerHTML =3D "<input/>";
-	el.firstChild.setAttribute( "value", "" );
-	return el.firstChild.getAttribute( "value" ) =3D=3D=3D "";
-}) ) {
-	addHandle( "value", function( elem, name, isXML ) {
-		if ( !isXML && elem.nodeName.toLowerCase() =3D=3D=3D "input" ) {
-			return elem.defaultValue;
-		}
-	});
-}
-
-// Support: IE<9
-// Use getAttributeNode to fetch booleans when getAttribute lies
-if ( !assert(function( el ) {
-	return el.getAttribute("disabled") =3D=3D null;
-}) ) {
-	addHandle( booleans, function( elem, name, isXML ) {
-		var val;
-		if ( !isXML ) {
-			return elem[ name ] =3D=3D=3D true ? name.toLowerCase() :
-					(val =3D elem.getAttributeNode( name )) && val.specified ?
-					val.value :
-				null;
-		}
-	});
-}
-
-return Sizzle;
-
-})( window );
-
+support.sortDetached =3D assert( function( el ) {
=20
+	// Should return 1, but returns 4 (following)
+	return el.compareDocumentPosition( document.createElement( "fieldset" ) )=
 & 1;
+} );
=20
-jQuery.find =3D Sizzle;
-jQuery.expr =3D Sizzle.selectors;
+jQuery.find =3D find;
=20
 // Deprecated
 jQuery.expr[ ":" ] =3D jQuery.expr.pseudos;
-jQuery.uniqueSort =3D jQuery.unique =3D Sizzle.uniqueSort;
-jQuery.text =3D Sizzle.getText;
-jQuery.isXMLDoc =3D Sizzle.isXML;
-jQuery.contains =3D Sizzle.contains;
-jQuery.escapeSelector =3D Sizzle.escape;
+jQuery.unique =3D jQuery.uniqueSort;
+
+// These have always been private, but they used to be documented as part =
of
+// Sizzle so let's maintain them for now for backwards compatibility purpo=
ses.
+find.compile =3D compile;
+find.select =3D select;
+find.setDocument =3D setDocument;
+find.tokenize =3D tokenize;
+
+find.escape =3D jQuery.escapeSelector;
+find.getText =3D jQuery.text;
+find.isXML =3D jQuery.isXMLDoc;
+find.selectors =3D jQuery.expr;
+find.support =3D jQuery.support;
+find.uniqueSort =3D jQuery.uniqueSort;
=20
+	/* eslint-enable */
=20
+} )();
=20
=20
 var dir =3D function( elem, dir, until ) {
@@ -2821,13 +2754,6 @@ var siblings =3D function( n, elem ) {
=20
 var rneedsContext =3D jQuery.expr.match.needsContext;
=20
-
-
-function nodeName( elem, name ) {
-
-  return elem.nodeName && elem.nodeName.toLowerCase() =3D=3D=3D name.toLow=
erCase();
-
-};
 var rsingleTag =3D ( /^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?=
:<\/\1>|)$/i );
=20
=20
@@ -2926,8 +2852,8 @@ jQuery.fn.extend( {
 var rootjQuery,
=20
 	// A simple way to check for HTML strings
-	// Prioritize #id over <tag> to avoid XSS via location.hash (#9521)
-	// Strict HTML recognition (#11290: must start with <)
+	// Prioritize #id over <tag> to avoid XSS via location.hash (trac-9521)
+	// Strict HTML recognition (trac-11290: must start with <)
 	// Shortcut simple #id case for speed
 	rquickExpr =3D /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/,
=20
@@ -3078,7 +3004,7 @@ jQuery.fn.extend( {
 					if ( cur.nodeType < 11 && ( targets ?
 						targets.index( cur ) > -1 :
=20
-						// Don't pass non-elements to Sizzle
+						// Don't pass non-elements to jQuery#find
 						cur.nodeType =3D=3D=3D 1 &&
 							jQuery.find.matchesSelector( cur, selectors ) ) ) {
=20
@@ -3141,7 +3067,7 @@ jQuery.each( {
 	parents: function( elem ) {
 		return dir( elem, "parentNode" );
 	},
-	parentsUntil: function( elem, i, until ) {
+	parentsUntil: function( elem, _i, until ) {
 		return dir( elem, "parentNode", until );
 	},
 	next: function( elem ) {
@@ -3156,10 +3082,10 @@ jQuery.each( {
 	prevAll: function( elem ) {
 		return dir( elem, "previousSibling" );
 	},
-	nextUntil: function( elem, i, until ) {
+	nextUntil: function( elem, _i, until ) {
 		return dir( elem, "nextSibling", until );
 	},
-	prevUntil: function( elem, i, until ) {
+	prevUntil: function( elem, _i, until ) {
 		return dir( elem, "previousSibling", until );
 	},
 	siblings: function( elem ) {
@@ -3169,7 +3095,13 @@ jQuery.each( {
 		return siblings( elem.firstChild );
 	},
 	contents: function( elem ) {
-		if ( typeof elem.contentDocument !=3D=3D "undefined" ) {
+		if ( elem.contentDocument !=3D null &&
+
+			// Support: IE 11+
+			// <object> elements with no `data` attribute has an object
+			// `contentDocument` with a `null` prototype.
+			getProto( elem.contentDocument ) ) {
+
 			return elem.contentDocument;
 		}
=20
@@ -3512,7 +3444,7 @@ jQuery.extend( {
 					var fns =3D arguments;
=20
 					return jQuery.Deferred( function( newDefer ) {
-						jQuery.each( tuples, function( i, tuple ) {
+						jQuery.each( tuples, function( _i, tuple ) {
=20
 							// Map tuples (progress, done, fail) to arguments (done, fail, prog=
ress)
 							var fn =3D isFunction( fns[ tuple[ 4 ] ] ) && fns[ tuple[ 4 ] ];
@@ -3627,7 +3559,7 @@ jQuery.extend( {
=20
 											if ( jQuery.Deferred.exceptionHook ) {
 												jQuery.Deferred.exceptionHook( e,
-													process.stackTrace );
+													process.error );
 											}
=20
 											// Support: Promises/A+ section 2.3.3.3.4.1
@@ -3655,10 +3587,17 @@ jQuery.extend( {
 								process();
 							} else {
=20
-								// Call an optional hook to record the stack, in case of exception
+								// Call an optional hook to record the error, in case of exception
 								// since it's otherwise lost when execution goes async
-								if ( jQuery.Deferred.getStackHook ) {
-									process.stackTrace =3D jQuery.Deferred.getStackHook();
+								if ( jQuery.Deferred.getErrorHook ) {
+									process.error =3D jQuery.Deferred.getErrorHook();
+
+								// The deprecated alias of the above. While the name suggests
+								// returning the stack, not an error instance, jQuery just passes
+								// it directly to `console.warn` so both will work; an instance
+								// just better cooperates with source maps.
+								} else if ( jQuery.Deferred.getStackHook ) {
+									process.error =3D jQuery.Deferred.getStackHook();
 								}
 								window.setTimeout( process );
 							}
@@ -3792,8 +3731,8 @@ jQuery.extend( {
 			resolveContexts =3D Array( i ),
 			resolveValues =3D slice.call( arguments ),
=20
-			// the master Deferred
-			master =3D jQuery.Deferred(),
+			// the primary Deferred
+			primary =3D jQuery.Deferred(),
=20
 			// subordinate callback factory
 			updateFunc =3D function( i ) {
@@ -3801,30 +3740,30 @@ jQuery.extend( {
 					resolveContexts[ i ] =3D this;
 					resolveValues[ i ] =3D arguments.length > 1 ? slice.call( arguments )=
 : value;
 					if ( !( --remaining ) ) {
-						master.resolveWith( resolveContexts, resolveValues );
+						primary.resolveWith( resolveContexts, resolveValues );
 					}
 				};
 			};
=20
 		// Single- and empty arguments are adopted like Promise.resolve
 		if ( remaining <=3D 1 ) {
-			adoptValue( singleValue, master.done( updateFunc( i ) ).resolve, master=
.reject,
+			adoptValue( singleValue, primary.done( updateFunc( i ) ).resolve, prima=
ry.reject,
 				!remaining );
=20
 			// Use .then() to unwrap secondary thenables (cf. gh-3000)
-			if ( master.state() =3D=3D=3D "pending" ||
+			if ( primary.state() =3D=3D=3D "pending" ||
 				isFunction( resolveValues[ i ] && resolveValues[ i ].then ) ) {
=20
-				return master.then();
+				return primary.then();
 			}
 		}
=20
 		// Multiple arguments are aggregated like Promise.all array elements
 		while ( i-- ) {
-			adoptValue( resolveValues[ i ], updateFunc( i ), master.reject );
+			adoptValue( resolveValues[ i ], updateFunc( i ), primary.reject );
 		}
=20
-		return master.promise();
+		return primary.promise();
 	}
 } );
=20
@@ -3833,12 +3772,16 @@ jQuery.extend( {
 // warn about them ASAP rather than swallowing them by default.
 var rerrorNames =3D /^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error=
$/;
=20
-jQuery.Deferred.exceptionHook =3D function( error, stack ) {
+// If `jQuery.Deferred.getErrorHook` is defined, `asyncError` is an error
+// captured before the async barrier to get the original error cause
+// which may otherwise be hidden.
+jQuery.Deferred.exceptionHook =3D function( error, asyncError ) {
=20
 	// Support: IE 8 - 9 only
 	// Console exists when dev tools are open, which can happen at any time
 	if ( window.console && window.console.warn && error && rerrorNames.test( =
error.name ) ) {
-		window.console.warn( "jQuery.Deferred exception: " + error.message, erro=
r.stack, stack );
+		window.console.warn( "jQuery.Deferred exception: " + error.message,
+			error.stack, asyncError );
 	}
 };
=20
@@ -3878,7 +3821,7 @@ jQuery.extend( {
 	isReady: false,
=20
 	// A counter to track how many items to wait for before
-	// the ready event fires. See #6781
+	// the ready event fires. See trac-6781
 	readyWait: 1,
=20
 	// Handle when the DOM is ready
@@ -3965,7 +3908,7 @@ var access =3D function( elems, fn, key, value, chain=
able, emptyGet, raw ) {
 			// ...except when executing function values
 			} else {
 				bulk =3D fn;
-				fn =3D function( elem, key, value ) {
+				fn =3D function( elem, _key, value ) {
 					return bulk.call( jQuery( elem ), value );
 				};
 			}
@@ -3975,8 +3918,8 @@ var access =3D function( elems, fn, key, value, chain=
able, emptyGet, raw ) {
 			for ( ; i < len; i++ ) {
 				fn(
 					elems[ i ], key, raw ?
-					value :
-					value.call( elems[ i ], i, fn( elems[ i ], key ) )
+						value :
+						value.call( elems[ i ], i, fn( elems[ i ], key ) )
 				);
 			}
 		}
@@ -4000,13 +3943,13 @@ var rmsPrefix =3D /^-ms-/,
 	rdashAlpha =3D /-([a-z])/g;
=20
 // Used by camelCase as callback to replace()
-function fcamelCase( all, letter ) {
+function fcamelCase( _all, letter ) {
 	return letter.toUpperCase();
 }
=20
 // Convert dashed to camelCase; used by the css and data modules
 // Support: IE <=3D9 - 11, Edge 12 - 15
-// Microsoft forgot to hump their vendor prefix (#9572)
+// Microsoft forgot to hump their vendor prefix (trac-9572)
 function camelCase( string ) {
 	return string.replace( rmsPrefix, "ms-" ).replace( rdashAlpha, fcamelCase=
 );
 }
@@ -4042,7 +3985,7 @@ Data.prototype =3D {
 			value =3D {};
=20
 			// We can accept data for non-element nodes in modern browsers,
-			// but we should not, see #8335.
+			// but we should not, see trac-8335.
 			// Always return an empty object.
 			if ( acceptData( owner ) ) {
=20
@@ -4281,7 +4224,7 @@ jQuery.fn.extend( {
 					while ( i-- ) {
=20
 						// Support: IE 11 only
-						// The attrs elements can be null (#14894)
+						// The attrs elements can be null (trac-14894)
 						if ( attrs[ i ] ) {
 							name =3D attrs[ i ].name;
 							if ( name.indexOf( "data-" ) =3D=3D=3D 0 ) {
@@ -4528,27 +4471,6 @@ var isHiddenWithinTree =3D function( elem, el ) {
 			jQuery.css( elem, "display" ) =3D=3D=3D "none";
 	};
=20
-var swap =3D function( elem, options, callback, args ) {
-	var ret, name,
-		old =3D {};
-
-	// Remember the old values, and insert the new ones
-	for ( name in options ) {
-		old[ name ] =3D elem.style[ name ];
-		elem.style[ name ] =3D options[ name ];
-	}
-
-	ret =3D callback.apply( elem, args || [] );
-
-	// Revert the old values
-	for ( name in options ) {
-		elem.style[ name ] =3D old[ name ];
-	}
-
-	return ret;
-};
-
-
=20
=20
 function adjustCSS( elem, prop, valueParts, tween ) {
@@ -4719,11 +4641,40 @@ var rscriptType =3D ( /^$|^module$|\/(?:java|ecma)s=
cript/i );
=20
=20
=20
-// We have to close these tags to support XHTML (#13200)
-var wrapMap =3D {
+( function() {
+	var fragment =3D document.createDocumentFragment(),
+		div =3D fragment.appendChild( document.createElement( "div" ) ),
+		input =3D document.createElement( "input" );
+
+	// Support: Android 4.0 - 4.3 only
+	// Check state lost if the name is set (trac-11217)
+	// Support: Windows Web Apps (WWA)
+	// `name` and `type` must use .setAttribute for WWA (trac-14901)
+	input.setAttribute( "type", "radio" );
+	input.setAttribute( "checked", "checked" );
+	input.setAttribute( "name", "t" );
+
+	div.appendChild( input );
+
+	// Support: Android <=3D4.1 only
+	// Older WebKit doesn't clone checked state correctly in fragments
+	support.checkClone =3D div.cloneNode( true ).cloneNode( true ).lastChild.=
checked;
+
+	// Support: IE <=3D11 only
+	// Make sure textarea (and checkbox) defaultValue is properly cloned
+	div.innerHTML =3D "<textarea>x</textarea>";
+	support.noCloneChecked =3D !!div.cloneNode( true ).lastChild.defaultValue;
=20
 	// Support: IE <=3D9 only
-	option: [ 1, "<select multiple=3D'multiple'>", "</select>" ],
+	// IE <=3D9 replaces <option> tags with their contents when inserted outs=
ide of
+	// the select element.
+	div.innerHTML =3D "<option></option>";
+	support.option =3D !!div.lastChild;
+} )();
+
+
+// We have to close these tags to support XHTML (trac-13200)
+var wrapMap =3D {
=20
 	// XHTML parsers do not magically insert elements in the
 	// same way that tag soup parsers do. So we cannot shorten
@@ -4736,17 +4687,19 @@ var wrapMap =3D {
 	_default: [ 0, "", "" ]
 };
=20
-// Support: IE <=3D9 only
-wrapMap.optgroup =3D wrapMap.option;
-
 wrapMap.tbody =3D wrapMap.tfoot =3D wrapMap.colgroup =3D wrapMap.caption =
=3D wrapMap.thead;
 wrapMap.th =3D wrapMap.td;
=20
+// Support: IE <=3D9 only
+if ( !support.option ) {
+	wrapMap.optgroup =3D wrapMap.option =3D [ 1, "<select multiple=3D'multipl=
e'>", "</select>" ];
+}
+
=20
 function getAll( context, tag ) {
=20
 	// Support: IE <=3D9 - 11 only
-	// Use typeof to avoid zero-argument method invocation on host objects (#=
15151)
+	// Use typeof to avoid zero-argument method invocation on host objects (t=
rac-15151)
 	var ret;
=20
 	if ( typeof context.getElementsByTagName !=3D=3D "undefined" ) {
@@ -4829,7 +4782,7 @@ function buildFragment( elems, context, scripts, sele=
ction, ignored ) {
 				// Remember the top-level container
 				tmp =3D fragment.firstChild;
=20
-				// Ensure the created nodes are orphaned (#12392)
+				// Ensure the created nodes are orphaned (trac-12392)
 				tmp.textContent =3D "";
 			}
 		}
@@ -4867,43 +4820,14 @@ function buildFragment( elems, context, scripts, se=
lection, ignored ) {
 					scripts.push( elem );
 				}
 			}
-		}
-	}
-
-	return fragment;
-}
-
-
-( function() {
-	var fragment =3D document.createDocumentFragment(),
-		div =3D fragment.appendChild( document.createElement( "div" ) ),
-		input =3D document.createElement( "input" );
-
-	// Support: Android 4.0 - 4.3 only
-	// Check state lost if the name is set (#11217)
-	// Support: Windows Web Apps (WWA)
-	// `name` and `type` must use .setAttribute for WWA (#14901)
-	input.setAttribute( "type", "radio" );
-	input.setAttribute( "checked", "checked" );
-	input.setAttribute( "name", "t" );
-
-	div.appendChild( input );
-
-	// Support: Android <=3D4.1 only
-	// Older WebKit doesn't clone checked state correctly in fragments
-	support.checkClone =3D div.cloneNode( true ).cloneNode( true ).lastChild.=
checked;
-
-	// Support: IE <=3D11 only
-	// Make sure textarea (and checkbox) defaultValue is properly cloned
-	div.innerHTML =3D "<textarea>x</textarea>";
-	support.noCloneChecked =3D !!div.cloneNode( true ).lastChild.defaultValue;
-} )();
+		}
+	}
+
+	return fragment;
+}
=20
=20
-var
-	rkeyEvent =3D /^key/,
-	rmouseEvent =3D /^(?:mouse|pointer|contextmenu|drag|drop)|click/,
-	rtypenamespace =3D /^([^.]*)(?:\.(.+)|)/;
+var rtypenamespace =3D /^([^.]*)(?:\.(.+)|)/;
=20
 function returnTrue() {
 	return true;
@@ -4913,25 +4837,6 @@ function returnFalse() {
 	return false;
 }
=20
-// Support: IE <=3D9 - 11+
-// focus() and blur() are asynchronous, except when they are no-op.
-// So expect focus to be synchronous when the element is already active,
-// and blur to be synchronous when the element is not already active.
-// (focus and blur are always synchronous in other supported browsers,
-// this just defines when we can count on it).
-function expectSync( elem, type ) {
-	return ( elem =3D=3D=3D safeActiveElement() ) =3D=3D=3D ( type =3D=3D=3D =
"focus" );
-}
-
-// Support: IE <=3D9 only
-// Accessing document.activeElement can throw unexpectedly
-// https://bugs.jquery.com/ticket/13393
-function safeActiveElement() {
-	try {
-		return document.activeElement;
-	} catch ( err ) { }
-}
-
 function on( elem, types, selector, data, fn, one ) {
 	var origFn, type;
=20
@@ -5008,8 +4913,8 @@ jQuery.event =3D {
 			special, handlers, type, namespaces, origType,
 			elemData =3D dataPriv.get( elem );
=20
-		// Don't attach events to noData or text/comment nodes (but allow plain =
objects)
-		if ( !elemData ) {
+		// Only attach events to objects that accept data
+		if ( !acceptData( elem ) ) {
 			return;
 		}
=20
@@ -5033,7 +4938,7 @@ jQuery.event =3D {
=20
 		// Init the element's event structure and main handler, if this is the f=
irst
 		if ( !( events =3D elemData.events ) ) {
-			events =3D elemData.events =3D {};
+			events =3D elemData.events =3D Object.create( null );
 		}
 		if ( !( eventHandle =3D elemData.handle ) ) {
 			eventHandle =3D elemData.handle =3D function( e ) {
@@ -5191,12 +5096,15 @@ jQuery.event =3D {
=20
 	dispatch: function( nativeEvent ) {
=20
-		// Make a writable jQuery.Event from the native event object
-		var event =3D jQuery.event.fix( nativeEvent );
-
 		var i, j, ret, matched, handleObj, handlerQueue,
 			args =3D new Array( arguments.length ),
-			handlers =3D ( dataPriv.get( this, "events" ) || {} )[ event.type ] || =
[],
+
+			// Make a writable jQuery.Event from the native event object
+			event =3D jQuery.event.fix( nativeEvent ),
+
+			handlers =3D (
+				dataPriv.get( this, "events" ) || Object.create( null )
+			)[ event.type ] || [],
 			special =3D jQuery.event.special[ event.type ] || {};
=20
 		// Use the fix-ed jQuery.Event rather than the (read-only) native event
@@ -5276,15 +5184,15 @@ jQuery.event =3D {
=20
 			for ( ; cur !=3D=3D this; cur =3D cur.parentNode || this ) {
=20
-				// Don't check non-elements (#13208)
-				// Don't process clicks on disabled elements (#6911, #8165, #11382, #1=
1764)
+				// Don't check non-elements (trac-13208)
+				// Don't process clicks on disabled elements (trac-6911, trac-8165, tr=
ac-11382, trac-11764)
 				if ( cur.nodeType =3D=3D=3D 1 && !( event.type =3D=3D=3D "click" && cu=
r.disabled =3D=3D=3D true ) ) {
 					matchedHandlers =3D [];
 					matchedSelectors =3D {};
 					for ( i =3D 0; i < delegateCount; i++ ) {
 						handleObj =3D handlers[ i ];
=20
-						// Don't conflict with Object.prototype properties (#13203)
+						// Don't conflict with Object.prototype properties (trac-13203)
 						sel =3D handleObj.selector + " ";
=20
 						if ( matchedSelectors[ sel ] =3D=3D=3D undefined ) {
@@ -5320,12 +5228,12 @@ jQuery.event =3D {
 			get: isFunction( hook ) ?
 				function() {
 					if ( this.originalEvent ) {
-							return hook( this.originalEvent );
+						return hook( this.originalEvent );
 					}
 				} :
 				function() {
 					if ( this.originalEvent ) {
-							return this.originalEvent[ name ];
+						return this.originalEvent[ name ];
 					}
 				},
=20
@@ -5366,7 +5274,7 @@ jQuery.event =3D {
 					el.click && nodeName( el, "input" ) ) {
=20
 					// dataPriv.set( el, "click", ... )
-					leverageNative( el, "click", returnTrue );
+					leverageNative( el, "click", true );
 				}
=20
 				// Return false to allow normal processing in the caller
@@ -5417,10 +5325,10 @@ jQuery.event =3D {
 // synthetic events by interrupting progress until reinvoked in response to
 // *native* events that it fires directly, ensuring that state changes have
 // already occurred before other listeners are invoked.
-function leverageNative( el, type, expectSync ) {
+function leverageNative( el, type, isSetup ) {
=20
-	// Missing expectSync indicates a trigger call, which must force setup th=
rough jQuery.event.add
-	if ( !expectSync ) {
+	// Missing `isSetup` indicates a trigger call, which must force setup thr=
ough jQuery.event.add
+	if ( !isSetup ) {
 		if ( dataPriv.get( el, type ) =3D=3D=3D undefined ) {
 			jQuery.event.add( el, type, returnTrue );
 		}
@@ -5432,15 +5340,13 @@ function leverageNative( el, type, expectSync ) {
 	jQuery.event.add( el, type, {
 		namespace: false,
 		handler: function( event ) {
-			var notAsync, result,
+			var result,
 				saved =3D dataPriv.get( this, type );
=20
 			if ( ( event.isTrigger & 1 ) && this[ type ] ) {
=20
 				// Interrupt processing of the outer synthetic .trigger()ed event
-				// Saved data should be false in such cases, but might be a leftover c=
apture object
-				// from an async native handler (gh-4350)
-				if ( !saved.length ) {
+				if ( !saved ) {
=20
 					// Store arguments for use when handling the inner native event
 					// There will always be at least one argument (an event object), so t=
his array
@@ -5449,27 +5355,22 @@ function leverageNative( el, type, expectSync ) {
 					dataPriv.set( this, type, saved );
=20
 					// Trigger the native event and capture its result
-					// Support: IE <=3D9 - 11+
-					// focus() and blur() are asynchronous
-					notAsync =3D expectSync( this, type );
 					this[ type ]();
 					result =3D dataPriv.get( this, type );
-					if ( saved !=3D=3D result || notAsync ) {
-						dataPriv.set( this, type, false );
-					} else {
-						result =3D {};
-					}
+					dataPriv.set( this, type, false );
+
 					if ( saved !=3D=3D result ) {
=20
 						// Cancel the outer synthetic event
 						event.stopImmediatePropagation();
 						event.preventDefault();
-						return result.value;
+
+						return result;
 					}
=20
 				// If this is an inner synthetic event for an event with a bubbling su=
rrogate
-				// (focus or blur), assume that the surrogate already propagated from =
triggering the
-				// native event and prevent that from happening again here.
+				// (focus or blur), assume that the surrogate already propagated from =
triggering
+				// the native event and prevent that from happening again here.
 				// This technically gets the ordering wrong w.r.t. to `.trigger()` (in=
 which the
 				// bubbling surrogate propagates *after* the non-bubbling base), but t=
hat seems
 				// less bad than duplication.
@@ -5479,22 +5380,25 @@ function leverageNative( el, type, expectSync ) {
=20
 			// If this is a native event triggered above, everything is now in order
 			// Fire an inner synthetic event with the original arguments
-			} else if ( saved.length ) {
+			} else if ( saved ) {
=20
 				// ...and capture the result
-				dataPriv.set( this, type, {
-					value: jQuery.event.trigger(
-
-						// Support: IE <=3D9 - 11+
-						// Extend with the prototype to reset the above stopImmediatePropaga=
tion()
-						jQuery.extend( saved[ 0 ], jQuery.Event.prototype ),
-						saved.slice( 1 ),
-						this
-					)
-				} );
-
-				// Abort handling of the native event
-				event.stopImmediatePropagation();
+				dataPriv.set( this, type, jQuery.event.trigger(
+					saved[ 0 ],
+					saved.slice( 1 ),
+					this
+				) );
+
+				// Abort handling of the native event by all jQuery handlers while all=
owing
+				// native handlers on the same element to run. On target, this is achi=
eved
+				// by stopping immediate propagation just on the jQuery event. However,
+				// the native event is re-wrapped by a jQuery one on each level of the
+				// propagation so the only way to stop it for jQuery is to stop it for
+				// everyone via native `stopPropagation()`. This is not a problem for
+				// focus/blur which don't bubble, but it does also stop click on check=
boxes
+				// and radios. We accept this limitation.
+				event.stopPropagation();
+				event.isImmediatePropagationStopped =3D returnTrue;
 			}
 		}
 	} );
@@ -5532,7 +5436,7 @@ jQuery.Event =3D function( src, props ) {
=20
 		// Create target properties
 		// Support: Safari <=3D6 - 7 only
-		// Target should not be a text node (#504, #13143)
+		// Target should not be a text node (trac-504, trac-13143)
 		this.target =3D ( src.target && src.target.nodeType =3D=3D=3D 3 ) ?
 			src.target.parentNode :
 			src.target;
@@ -5629,49 +5533,77 @@ jQuery.each( {
 	targetTouches: true,
 	toElement: true,
 	touches: true,
+	which: true
+}, jQuery.event.addProp );
=20
-	which: function( event ) {
-		var button =3D event.button;
+jQuery.each( { focus: "focusin", blur: "focusout" }, function( type, deleg=
ateType ) {
=20
-		// Add which for key events
-		if ( event.which =3D=3D null && rkeyEvent.test( event.type ) ) {
-			return event.charCode !=3D null ? event.charCode : event.keyCode;
-		}
+	function focusMappedHandler( nativeEvent ) {
+		if ( document.documentMode ) {
=20
-		// Add which for click: 1 =3D=3D=3D left; 2 =3D=3D=3D middle; 3 =3D=3D=
=3D right
-		if ( !event.which && button !=3D=3D undefined && rmouseEvent.test( event=
.type ) ) {
-			if ( button & 1 ) {
-				return 1;
-			}
+			// Support: IE 11+
+			// Attach a single focusin/focusout handler on the document while someo=
ne wants
+			// focus/blur. This is because the former are synchronous in IE while t=
he latter
+			// are async. In other browsers, all those handlers are invoked synchro=
nously.
=20
-			if ( button & 2 ) {
-				return 3;
-			}
+			// `handle` from private data would already wrap the event, but we need
+			// to change the `type` here.
+			var handle =3D dataPriv.get( this, "handle" ),
+				event =3D jQuery.event.fix( nativeEvent );
+			event.type =3D nativeEvent.type =3D=3D=3D "focusin" ? "focus" : "blur";
+			event.isSimulated =3D true;
=20
-			if ( button & 4 ) {
-				return 2;
+			// First, handle focusin/focusout
+			handle( nativeEvent );
+
+			// ...then, handle focus/blur
+			//
+			// focus/blur don't bubble while focusin/focusout do; simulate the form=
er by only
+			// invoking the handler at the lower level.
+			if ( event.target =3D=3D=3D event.currentTarget ) {
+
+				// The setup part calls `leverageNative`, which, in turn, calls
+				// `jQuery.event.add`, so event handle will already have been set
+				// by this point.
+				handle( event );
 			}
+		} else {
=20
-			return 0;
+			// For non-IE browsers, attach a single capturing handler on the docume=
nt
+			// while someone wants focusin/focusout.
+			jQuery.event.simulate( delegateType, nativeEvent.target,
+				jQuery.event.fix( nativeEvent ) );
 		}
-
-		return event.which;
 	}
-}, jQuery.event.addProp );
=20
-jQuery.each( { focus: "focusin", blur: "focusout" }, function( type, deleg=
ateType ) {
 	jQuery.event.special[ type ] =3D {
=20
 		// Utilize native event if possible so blur/focus sequence is correct
 		setup: function() {
=20
+			var attaches;
+
 			// Claim the first handler
 			// dataPriv.set( this, "focus", ... )
 			// dataPriv.set( this, "blur", ... )
-			leverageNative( this, type, expectSync );
+			leverageNative( this, type, true );
=20
-			// Return false to allow normal processing in the caller
-			return false;
+			if ( document.documentMode ) {
+
+				// Support: IE 9 - 11+
+				// We use the same native handler for focusin & focus (and focusout & =
blur)
+				// so we need to coordinate setup & teardown parts between those event=
s.
+				// Use `delegateType` as the key as `type` is already used by `leverag=
eNative`.
+				attaches =3D dataPriv.get( this, delegateType );
+				if ( !attaches ) {
+					this.addEventListener( delegateType, focusMappedHandler );
+				}
+				dataPriv.set( this, delegateType, ( attaches || 0 ) + 1 );
+			} else {
+
+				// Return false to allow normal processing in the caller
+				return false;
+			}
 		},
 		trigger: function() {
=20
@@ -5682,8 +5614,84 @@ jQuery.each( { focus: "focusin", blur: "focusout" },=
 function( type, delegateTyp
 			return true;
 		},
=20
+		teardown: function() {
+			var attaches;
+
+			if ( document.documentMode ) {
+				attaches =3D dataPriv.get( this, delegateType ) - 1;
+				if ( !attaches ) {
+					this.removeEventListener( delegateType, focusMappedHandler );
+					dataPriv.remove( this, delegateType );
+				} else {
+					dataPriv.set( this, delegateType, attaches );
+				}
+			} else {
+
+				// Return false to indicate standard teardown should be applied
+				return false;
+			}
+		},
+
+		// Suppress native focus or blur if we're currently inside
+		// a leveraged native-event stack
+		_default: function( event ) {
+			return dataPriv.get( event.target, type );
+		},
+
 		delegateType: delegateType
 	};
+
+	// Support: Firefox <=3D44
+	// Firefox doesn't have focus(in | out) events
+	// Related ticket - https://bugzilla.mozilla.org/show_bug.cgi?id=3D687787
+	//
+	// Support: Chrome <=3D48 - 49, Safari <=3D9.0 - 9.1
+	// focus(in | out) events fire after focus & blur events,
+	// which is spec violation - http://www.w3.org/TR/DOM-Level-3-Events/#eve=
nts-focusevent-event-order
+	// Related ticket - https://bugs.chromium.org/p/chromium/issues/detail?id=
=3D449857
+	//
+	// Support: IE 9 - 11+
+	// To preserve relative focusin/focus & focusout/blur event order guarant=
eed on the 3.x branch,
+	// attach a single handler for both events in IE.
+	jQuery.event.special[ delegateType ] =3D {
+		setup: function() {
+
+			// Handle: regular nodes (via `this.ownerDocument`), window
+			// (via `this.document`) & document (via `this`).
+			var doc =3D this.ownerDocument || this.document || this,
+				dataHolder =3D document.documentMode ? this : doc,
+				attaches =3D dataPriv.get( dataHolder, delegateType );
+
+			// Support: IE 9 - 11+
+			// We use the same native handler for focusin & focus (and focusout & b=
lur)
+			// so we need to coordinate setup & teardown parts between those events.
+			// Use `delegateType` as the key as `type` is already used by `leverage=
Native`.
+			if ( !attaches ) {
+				if ( document.documentMode ) {
+					this.addEventListener( delegateType, focusMappedHandler );
+				} else {
+					doc.addEventListener( type, focusMappedHandler, true );
+				}
+			}
+			dataPriv.set( dataHolder, delegateType, ( attaches || 0 ) + 1 );
+		},
+		teardown: function() {
+			var doc =3D this.ownerDocument || this.document || this,
+				dataHolder =3D document.documentMode ? this : doc,
+				attaches =3D dataPriv.get( dataHolder, delegateType ) - 1;
+
+			if ( !attaches ) {
+				if ( document.documentMode ) {
+					this.removeEventListener( delegateType, focusMappedHandler );
+				} else {
+					doc.removeEventListener( type, focusMappedHandler, true );
+				}
+				dataPriv.remove( dataHolder, delegateType );
+			} else {
+				dataPriv.set( dataHolder, delegateType, attaches );
+			}
+		}
+	};
 } );
=20
 // Create mouseenter/leave events using mouseover/out and event-time checks
@@ -5771,13 +5779,6 @@ jQuery.fn.extend( {
=20
 var
=20
-	/* eslint-disable max-len */
-
-	// See https://github.com/eslint/eslint/issues/3229
-	rxhtmlTag =3D /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z]=
[^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi,
-
-	/* eslint-enable */
-
 	// Support: IE <=3D10 - 11, Edge 12 - 13 only
 	// In IE/Edge using regex groups here causes severe slowdowns.
 	// See https://connect.microsoft.com/IE/feedback/details/1736512/
@@ -5785,7 +5786,8 @@ var
=20
 	// checked=3D"checked" or checked
 	rchecked =3D /checked\s*(?:[^=3D]|=3D\s*.checked.)/i,
-	rcleanScript =3D /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;
+
+	rcleanScript =3D /^\s*<!\[CDATA\[|\]\]>\s*$/g;
=20
 // Prefer a tbody over its parent table for containing new rows
 function manipulationTarget( elem, content ) {
@@ -5814,7 +5816,7 @@ function restoreScript( elem ) {
 }
=20
 function cloneCopyEvent( src, dest ) {
-	var i, l, type, pdataOld, pdataCur, udataOld, udataCur, events;
+	var i, l, type, pdataOld, udataOld, udataCur, events;
=20
 	if ( dest.nodeType !=3D=3D 1 ) {
 		return;
@@ -5822,13 +5824,11 @@ function cloneCopyEvent( src, dest ) {
=20
 	// 1. Copy private data: events, handlers, etc.
 	if ( dataPriv.hasData( src ) ) {
-		pdataOld =3D dataPriv.access( src );
-		pdataCur =3D dataPriv.set( dest, pdataOld );
+		pdataOld =3D dataPriv.get( src );
 		events =3D pdataOld.events;
=20
 		if ( events ) {
-			delete pdataCur.handle;
-			pdataCur.events =3D {};
+			dataPriv.remove( dest, "handle events" );
=20
 			for ( type in events ) {
 				for ( i =3D 0, l =3D events[ type ].length; i < l; i++ ) {
@@ -5864,7 +5864,7 @@ function fixInput( src, dest ) {
 function domManip( collection, args, callback, ignored ) {
=20
 	// Flatten any nested arrays
-	args =3D concat.apply( [], args );
+	args =3D flat( args );
=20
 	var fragment, first, scripts, hasScripts, node, doc,
 		i =3D 0,
@@ -5901,7 +5901,7 @@ function domManip( collection, args, callback, ignore=
d ) {
=20
 			// Use the original fragment for the last item
 			// instead of the first because it can end up
-			// being emptied incorrectly in certain situations (#8070).
+			// being emptied incorrectly in certain situations (trac-8070).
 			for ( ; i < l; i++ ) {
 				node =3D fragment;
=20
@@ -5923,7 +5923,7 @@ function domManip( collection, args, callback, ignore=
d ) {
 			if ( hasScripts ) {
 				doc =3D scripts[ scripts.length - 1 ].ownerDocument;
=20
-				// Reenable scripts
+				// Re-enable scripts
 				jQuery.map( scripts, restoreScript );
=20
 				// Evaluate executable scripts on first document insertion
@@ -5939,9 +5939,15 @@ function domManip( collection, args, callback, ignor=
ed ) {
 							if ( jQuery._evalUrl && !node.noModule ) {
 								jQuery._evalUrl( node.src, {
 									nonce: node.nonce || node.getAttribute( "nonce" )
-								} );
+								}, doc );
 							}
 						} else {
+
+							// Unwrap a CDATA section containing script contents. This shouldn'=
t be
+							// needed as in XML documents they're already not visible when
+							// inspecting element contents and in HTML documents they have no
+							// meaning but we're preserving that logic for backwards compatibil=
ity.
+							// This will be removed completely in 4.0. See gh-4904.
 							DOMEval( node.textContent.replace( rcleanScript, "" ), node, doc );
 						}
 					}
@@ -5976,7 +5982,7 @@ function remove( elem, selector, keepData ) {
=20
 jQuery.extend( {
 	htmlPrefilter: function( html ) {
-		return html.replace( rxhtmlTag, "<$1></$2>" );
+		return html;
 	},
=20
 	clone: function( elem, dataAndEvents, deepDataAndEvents ) {
@@ -5988,7 +5994,8 @@ jQuery.extend( {
 		if ( !support.noCloneChecked && ( elem.nodeType =3D=3D=3D 1 || elem.node=
Type =3D=3D=3D 11 ) &&
 				!jQuery.isXMLDoc( elem ) ) {
=20
-			// We eschew Sizzle here for performance reasons: https://jsperf.com/ge=
tall-vs-sizzle/2
+			// We eschew jQuery#find here for performance reasons:
+			// https://jsperf.com/getall-vs-sizzle/2
 			destElements =3D getAll( clone );
 			srcElements =3D getAll( elem );
=20
@@ -6224,9 +6231,12 @@ jQuery.each( {
 } );
 var rnumnonpx =3D new RegExp( "^(" + pnum + ")(?!px)[a-z%]+$", "i" );
=20
+var rcustomProp =3D /^--/;
+
+
 var getStyles =3D function( elem ) {
=20
-		// Support: IE <=3D11 only, Firefox <=3D30 (#15098, #14150)
+		// Support: IE <=3D11 only, Firefox <=3D30 (trac-15098, trac-14150)
 		// IE throws on elements created in popups
 		// FF meanwhile throws on frame elements through "defaultView.getCompute=
dStyle"
 		var view =3D elem.ownerDocument.defaultView;
@@ -6238,6 +6248,27 @@ var getStyles =3D function( elem ) {
 		return view.getComputedStyle( elem );
 	};
=20
+var swap =3D function( elem, options, callback ) {
+	var ret, name,
+		old =3D {};
+
+	// Remember the old values, and insert the new ones
+	for ( name in options ) {
+		old[ name ] =3D elem.style[ name ];
+		elem.style[ name ] =3D options[ name ];
+	}
+
+	ret =3D callback.call( elem );
+
+	// Revert the old values
+	for ( name in options ) {
+		elem.style[ name ] =3D old[ name ];
+	}
+
+	return ret;
+};
+
+
 var rboxStyle =3D new RegExp( cssExpand.join( "|" ), "i" );
=20
=20
@@ -6295,7 +6326,7 @@ var rboxStyle =3D new RegExp( cssExpand.join( "|" ), =
"i" );
 	}
=20
 	var pixelPositionVal, boxSizingReliableVal, scrollboxSizeVal, pixelBoxSty=
lesVal,
-		reliableMarginLeftVal,
+		reliableTrDimensionsVal, reliableMarginLeftVal,
 		container =3D document.createElement( "div" ),
 		div =3D document.createElement( "div" );
=20
@@ -6305,7 +6336,7 @@ var rboxStyle =3D new RegExp( cssExpand.join( "|" ), =
"i" );
 	}
=20
 	// Support: IE <=3D9 - 11 only
-	// Style of cloned element affects source element cloned (#8908)
+	// Style of cloned element affects source element cloned (trac-8908)
 	div.style.backgroundClip =3D "content-box";
 	div.cloneNode( true ).style.backgroundClip =3D "";
 	support.clearCloneStyle =3D div.style.backgroundClip =3D=3D=3D "content-b=
ox";
@@ -6330,6 +6361,54 @@ var rboxStyle =3D new RegExp( cssExpand.join( "|" ),=
 "i" );
 		scrollboxSize: function() {
 			computeStyleTests();
 			return scrollboxSizeVal;
+		},
+
+		// Support: IE 9 - 11+, Edge 15 - 18+
+		// IE/Edge misreport `getComputedStyle` of table rows with width/height
+		// set in CSS while `offset*` properties report correct values.
+		// Behavior in IE 9 is more subtle than in newer versions & it passes
+		// some versions of this test; make sure not to make it pass there!
+		//
+		// Support: Firefox 70+
+		// Only Firefox includes border widths
+		// in computed dimensions. (gh-4529)
+		reliableTrDimensions: function() {
+			var table, tr, trChild, trStyle;
+			if ( reliableTrDimensionsVal =3D=3D null ) {
+				table =3D document.createElement( "table" );
+				tr =3D document.createElement( "tr" );
+				trChild =3D document.createElement( "div" );
+
+				table.style.cssText =3D "position:absolute;left:-11111px;border-collap=
se:separate";
+				tr.style.cssText =3D "box-sizing:content-box;border:1px solid";
+
+				// Support: Chrome 86+
+				// Height set through cssText does not get applied.
+				// Computed height then comes back as 0.
+				tr.style.height =3D "1px";
+				trChild.style.height =3D "9px";
+
+				// Support: Android 8 Chrome 86+
+				// In our bodyBackground.html iframe,
+				// display for all div elements is set to "inline",
+				// which causes a problem only in Android 8 Chrome 86.
+				// Ensuring the div is `display: block`
+				// gets around this issue.
+				trChild.style.display =3D "block";
+
+				documentElement
+					.appendChild( table )
+					.appendChild( tr )
+					.appendChild( trChild );
+
+				trStyle =3D window.getComputedStyle( tr );
+				reliableTrDimensionsVal =3D ( parseInt( trStyle.height, 10 ) +
+					parseInt( trStyle.borderTopWidth, 10 ) +
+					parseInt( trStyle.borderBottomWidth, 10 ) ) =3D=3D=3D tr.offsetHeight;
+
+				documentElement.removeChild( table );
+			}
+			return reliableTrDimensionsVal;
 		}
 	} );
 } )();
@@ -6337,6 +6416,7 @@ var rboxStyle =3D new RegExp( cssExpand.join( "|" ), =
"i" );
=20
 function curCSS( elem, name, computed ) {
 	var width, minWidth, maxWidth, ret,
+		isCustomProp =3D rcustomProp.test( name ),
=20
 		// Support: Firefox 51+
 		// Retrieving style before computed somehow
@@ -6347,11 +6427,42 @@ function curCSS( elem, name, computed ) {
 	computed =3D computed || getStyles( elem );
=20
 	// getPropertyValue is needed for:
-	//   .css('filter') (IE 9 only, #12537)
-	//   .css('--customProperty) (#3144)
+	//   .css('filter') (IE 9 only, trac-12537)
+	//   .css('--customProperty) (gh-3144)
 	if ( computed ) {
+
+		// Support: IE <=3D9 - 11+
+		// IE only supports `"float"` in `getPropertyValue`; in computed styles
+		// it's only available as `"cssFloat"`. We no longer modify properties
+		// sent to `.css()` apart from camelCasing, so we need to check both.
+		// Normally, this would create difference in behavior: if
+		// `getPropertyValue` returns an empty string, the value returned
+		// by `.css()` would be `undefined`. This is usually the case for
+		// disconnected elements. However, in IE even disconnected elements
+		// with no styles return `"none"` for `getPropertyValue( "float" )`
 		ret =3D computed.getPropertyValue( name ) || computed[ name ];
=20
+		if ( isCustomProp && ret ) {
+
+			// Support: Firefox 105+, Chrome <=3D105+
+			// Spec requires trimming whitespace for custom properties (gh-4926).
+			// Firefox only trims leading whitespace. Chrome just collapses
+			// both leading & trailing whitespace to a single space.
+			//
+			// Fall back to `undefined` if empty string returned.
+			// This collapses a missing definition with property defined
+			// and set to an empty string but there's no standard API
+			// allowing us to differentiate them without a performance penalty
+			// and returning `undefined` aligns with older jQuery.
+			//
+			// rtrimCSS treats U+000D CARRIAGE RETURN and U+000C FORM FEED
+			// as whitespace while CSS does not, but this is not a problem
+			// because CSS preprocessing replaces them with U+000A LINE FEED
+			// (which *is* CSS whitespace)
+			// https://www.w3.org/TR/css-syntax-3/#input-preprocessing
+			ret =3D ret.replace( rtrimCSS, "$1" ) || undefined;
+		}
+
 		if ( ret =3D=3D=3D "" && !isAttached( elem ) ) {
 			ret =3D jQuery.style( elem, name );
 		}
@@ -6447,14 +6558,13 @@ var
 	// except "table", "table-cell", or "table-caption"
 	// See here for display values: https://developer.mozilla.org/en-US/docs/=
CSS/display
 	rdisplayswap =3D /^(none|table(?!-c[ea]).+)/,
-	rcustomProp =3D /^--/,
 	cssShow =3D { position: "absolute", visibility: "hidden", display: "block=
" },
 	cssNormalTransform =3D {
 		letterSpacing: "0",
 		fontWeight: "400"
 	};
=20
-function setPositiveNumber( elem, value, subtract ) {
+function setPositiveNumber( _elem, value, subtract ) {
=20
 	// Any relative (+/-) values have already been
 	// normalized at this point
@@ -6469,7 +6579,8 @@ function setPositiveNumber( elem, value, subtract ) {
 function boxModelAdjustment( elem, dimension, box, isBorderBox, styles, co=
mputedVal ) {
 	var i =3D dimension =3D=3D=3D "width" ? 1 : 0,
 		extra =3D 0,
-		delta =3D 0;
+		delta =3D 0,
+		marginDelta =3D 0;
=20
 	// Adjustment may not be necessary
 	if ( box =3D=3D=3D ( isBorderBox ? "border" : "content" ) ) {
@@ -6479,8 +6590,10 @@ function boxModelAdjustment( elem, dimension, box, i=
sBorderBox, styles, computed
 	for ( ; i < 4; i +=3D 2 ) {
=20
 		// Both box models exclude margin
+		// Count margin delta separately to only add it after scroll gutter adju=
stment.
+		// This is needed to make negative margins work with `outerHeight( true =
)` (gh-3982).
 		if ( box =3D=3D=3D "margin" ) {
-			delta +=3D jQuery.css( elem, box + cssExpand[ i ], true, styles );
+			marginDelta +=3D jQuery.css( elem, box + cssExpand[ i ], true, styles );
 		}
=20
 		// If we get here with a content-box, we're seeking "padding" or "border=
" or "margin"
@@ -6531,7 +6644,7 @@ function boxModelAdjustment( elem, dimension, box, is=
BorderBox, styles, computed
 		) ) || 0;
 	}
=20
-	return delta;
+	return delta + marginDelta;
 }
=20
 function getWidthOrHeight( elem, dimension, extra ) {
@@ -6559,17 +6672,26 @@ function getWidthOrHeight( elem, dimension, extra )=
 {
 	}
=20
=20
-	// Fall back to offsetWidth/offsetHeight when value is "auto"
-	// This happens for inline elements with no explicit setting (gh-3571)
-	// Support: Android <=3D4.1 - 4.3 only
-	// Also use offsetWidth/offsetHeight for misreported inline dimensions (g=
h-3602)
-	// Support: IE 9-11 only
-	// Also use offsetWidth/offsetHeight for when box sizing is unreliable
-	// We use getClientRects() to check for hidden/disconnected.
-	// In those cases, the computed value can be trusted to be border-box
+	// Support: IE 9 - 11 only
+	// Use offsetWidth/offsetHeight for when box sizing is unreliable.
+	// In those cases, the computed value can be trusted to be border-box.
 	if ( ( !support.boxSizingReliable() && isBorderBox ||
+
+		// Support: IE 10 - 11+, Edge 15 - 18+
+		// IE/Edge misreport `getComputedStyle` of table rows with width/height
+		// set in CSS while `offset*` properties report correct values.
+		// Interestingly, in some cases IE 9 doesn't suffer from this issue.
+		!support.reliableTrDimensions() && nodeName( elem, "tr" ) ||
+
+		// Fall back to offsetWidth/offsetHeight when value is "auto"
+		// This happens for inline elements with no explicit setting (gh-3571)
 		val =3D=3D=3D "auto" ||
+
+		// Support: Android <=3D4.1 - 4.3 only
+		// Also use offsetWidth/offsetHeight for misreported inline dimensions (=
gh-3602)
 		!parseFloat( val ) && jQuery.css( elem, "display", false, styles ) =3D=
=3D=3D "inline" ) &&
+
+		// Make sure the element is visible & connected
 		elem.getClientRects().length ) {
=20
 		isBorderBox =3D jQuery.css( elem, "boxSizing", false, styles ) =3D=3D=3D=
 "border-box";
@@ -6620,26 +6742,35 @@ jQuery.extend( {
=20
 	// Don't automatically add "px" to these possibly-unitless properties
 	cssNumber: {
-		"animationIterationCount": true,
-		"columnCount": true,
-		"fillOpacity": true,
-		"flexGrow": true,
-		"flexShrink": true,
-		"fontWeight": true,
-		"gridArea": true,
-		"gridColumn": true,
-		"gridColumnEnd": true,
-		"gridColumnStart": true,
-		"gridRow": true,
-		"gridRowEnd": true,
-		"gridRowStart": true,
-		"lineHeight": true,
-		"opacity": true,
-		"order": true,
-		"orphans": true,
-		"widows": true,
-		"zIndex": true,
-		"zoom": true
+		animationIterationCount: true,
+		aspectRatio: true,
+		borderImageSlice: true,
+		columnCount: true,
+		flexGrow: true,
+		flexShrink: true,
+		fontWeight: true,
+		gridArea: true,
+		gridColumn: true,
+		gridColumnEnd: true,
+		gridColumnStart: true,
+		gridRow: true,
+		gridRowEnd: true,
+		gridRowStart: true,
+		lineHeight: true,
+		opacity: true,
+		order: true,
+		orphans: true,
+		scale: true,
+		widows: true,
+		zIndex: true,
+		zoom: true,
+
+		// SVG-related
+		fillOpacity: true,
+		floodOpacity: true,
+		stopOpacity: true,
+		strokeMiterlimit: true,
+		strokeOpacity: true
 	},
=20
 	// Add in properties whose names you wish to fix before
@@ -6674,15 +6805,15 @@ jQuery.extend( {
 		if ( value !=3D=3D undefined ) {
 			type =3D typeof value;
=20
-			// Convert "+=3D" or "-=3D" to relative numbers (#7345)
+			// Convert "+=3D" or "-=3D" to relative numbers (trac-7345)
 			if ( type =3D=3D=3D "string" && ( ret =3D rcssNum.exec( value ) ) && re=
t[ 1 ] ) {
 				value =3D adjustCSS( elem, name, ret );
=20
-				// Fixes bug #9237
+				// Fixes bug trac-9237
 				type =3D "number";
 			}
=20
-			// Make sure that null and NaN values aren't set (#7116)
+			// Make sure that null and NaN values aren't set (trac-7116)
 			if ( value =3D=3D null || value !=3D=3D value ) {
 				return;
 			}
@@ -6764,7 +6895,7 @@ jQuery.extend( {
 	}
 } );
=20
-jQuery.each( [ "height", "width" ], function( i, dimension ) {
+jQuery.each( [ "height", "width" ], function( _i, dimension ) {
 	jQuery.cssHooks[ dimension ] =3D {
 		get: function( elem, computed, extra ) {
 			if ( computed ) {
@@ -6780,10 +6911,10 @@ jQuery.each( [ "height", "width" ], function( i, di=
mension ) {
 					// Running getBoundingClientRect on a disconnected node
 					// in IE throws an error.
 					( !elem.getClientRects().length || !elem.getBoundingClientRect().widt=
h ) ?
-						swap( elem, cssShow, function() {
-							return getWidthOrHeight( elem, dimension, extra );
-						} ) :
-						getWidthOrHeight( elem, dimension, extra );
+					swap( elem, cssShow, function() {
+						return getWidthOrHeight( elem, dimension, extra );
+					} ) :
+					getWidthOrHeight( elem, dimension, extra );
 			}
 		},
=20
@@ -6842,7 +6973,7 @@ jQuery.cssHooks.marginLeft =3D addGetHookIf( support.=
reliableMarginLeft,
 					swap( elem, { marginLeft: 0 }, function() {
 						return elem.getBoundingClientRect().left;
 					} )
-				) + "px";
+			) + "px";
 		}
 	}
 );
@@ -6981,7 +7112,7 @@ Tween.propHooks =3D {
 			if ( jQuery.fx.step[ tween.prop ] ) {
 				jQuery.fx.step[ tween.prop ]( tween );
 			} else if ( tween.elem.nodeType =3D=3D=3D 1 && (
-					jQuery.cssHooks[ tween.prop ] ||
+				jQuery.cssHooks[ tween.prop ] ||
 					tween.elem.style[ finalPropName( tween.prop ) ] !=3D null ) ) {
 				jQuery.style( tween.elem, tween.prop, tween.now + tween.unit );
 			} else {
@@ -7226,7 +7357,7 @@ function defaultPrefilter( elem, props, opts ) {
=20
 			anim.done( function() {
=20
-			/* eslint-enable no-loop-func */
+				/* eslint-enable no-loop-func */
=20
 				// The final step of a "hide" animation is actually hiding the element
 				if ( !hidden ) {
@@ -7306,7 +7437,7 @@ function Animation( elem, properties, options ) {
 				remaining =3D Math.max( 0, animation.startTime + animation.duration - =
currentTime ),
=20
 				// Support: Android 2.3 only
-				// Archaic crash bug won't allow us to use `1 - ( 0.5 || 0 )` (#12497)
+				// Archaic crash bug won't allow us to use `1 - ( 0.5 || 0 )` (trac-12=
497)
 				temp =3D remaining / animation.duration || 0,
 				percent =3D 1 - temp,
 				index =3D 0,
@@ -7346,7 +7477,7 @@ function Animation( elem, properties, options ) {
 			tweens: [],
 			createTween: function( prop, end ) {
 				var tween =3D jQuery.Tween( elem, animation.opts, prop, end,
-						animation.opts.specialEasing[ prop ] || animation.opts.easing );
+					animation.opts.specialEasing[ prop ] || animation.opts.easing );
 				animation.tweens.push( tween );
 				return tween;
 			},
@@ -7519,7 +7650,8 @@ jQuery.fn.extend( {
 					anim.stop( true );
 				}
 			};
-			doAnimation.finish =3D doAnimation;
+
+		doAnimation.finish =3D doAnimation;
=20
 		return empty || optall.queue =3D=3D=3D false ?
 			this.each( doAnimation ) :
@@ -7537,7 +7669,7 @@ jQuery.fn.extend( {
 			clearQueue =3D type;
 			type =3D undefined;
 		}
-		if ( clearQueue && type !=3D=3D false ) {
+		if ( clearQueue ) {
 			this.queue( type || "fx", [] );
 		}
=20
@@ -7620,7 +7752,7 @@ jQuery.fn.extend( {
 	}
 } );
=20
-jQuery.each( [ "toggle", "show", "hide" ], function( i, name ) {
+jQuery.each( [ "toggle", "show", "hide" ], function( _i, name ) {
 	var cssFn =3D jQuery.fn[ name ];
 	jQuery.fn[ name ] =3D function( speed, easing, callback ) {
 		return speed =3D=3D null || typeof speed =3D=3D=3D "boolean" ?
@@ -7695,7 +7827,6 @@ jQuery.fx.speeds =3D {
=20
=20
 // Based off of the plugin by Clint Helfers, with permission.
-// https://web.archive.org/web/20100324014747/http://blindsignals.com/inde=
x.php/2009/07/jquery-delay/
 jQuery.fn.delay =3D function( time, type ) {
 	time =3D jQuery.fx ? jQuery.fx.speeds[ time ] || time : time;
 	type =3D type || "fx";
@@ -7841,7 +7972,7 @@ boolHook =3D {
 	}
 };
=20
-jQuery.each( jQuery.expr.match.bool.source.match( /\w+/g ), function( i, n=
ame ) {
+jQuery.each( jQuery.expr.match.bool.source.match( /\w+/g ), function( _i, =
name ) {
 	var getter =3D attrHandle[ name ] || jQuery.find.attr;
=20
 	attrHandle[ name ] =3D function( elem, name, isXML ) {
@@ -7920,8 +8051,7 @@ jQuery.extend( {
 				// Support: IE <=3D9 - 11 only
 				// elem.tabIndex doesn't always return the
 				// correct value when it hasn't been explicitly set
-				// https://web.archive.org/web/20141116233347/http://fluidproject.org/=
blog/2008/01/09/getting-setting-and-removing-tabindex-values-with-javascrip=
t/
-				// Use proper attribute retrieval(#12072)
+				// Use proper attribute retrieval (trac-12072)
 				var tabindex =3D jQuery.find.attr( elem, "tabindex" );
=20
 				if ( tabindex ) {
@@ -8025,8 +8155,7 @@ function classesToArray( value ) {
=20
 jQuery.fn.extend( {
 	addClass: function( value ) {
-		var classes, elem, cur, curValue, clazz, j, finalValue,
-			i =3D 0;
+		var classNames, cur, curValue, className, i, finalValue;
=20
 		if ( isFunction( value ) ) {
 			return this.each( function( j ) {
@@ -8034,36 +8163,35 @@ jQuery.fn.extend( {
 			} );
 		}
=20
-		classes =3D classesToArray( value );
+		classNames =3D classesToArray( value );
=20
-		if ( classes.length ) {
-			while ( ( elem =3D this[ i++ ] ) ) {
-				curValue =3D getClass( elem );
-				cur =3D elem.nodeType =3D=3D=3D 1 && ( " " + stripAndCollapse( curValu=
e ) + " " );
+		if ( classNames.length ) {
+			return this.each( function() {
+				curValue =3D getClass( this );
+				cur =3D this.nodeType =3D=3D=3D 1 && ( " " + stripAndCollapse( curValu=
e ) + " " );
=20
 				if ( cur ) {
-					j =3D 0;
-					while ( ( clazz =3D classes[ j++ ] ) ) {
-						if ( cur.indexOf( " " + clazz + " " ) < 0 ) {
-							cur +=3D clazz + " ";
+					for ( i =3D 0; i < classNames.length; i++ ) {
+						className =3D classNames[ i ];
+						if ( cur.indexOf( " " + className + " " ) < 0 ) {
+							cur +=3D className + " ";
 						}
 					}
=20
 					// Only assign if different to avoid unneeded rendering.
 					finalValue =3D stripAndCollapse( cur );
 					if ( curValue !=3D=3D finalValue ) {
-						elem.setAttribute( "class", finalValue );
+						this.setAttribute( "class", finalValue );
 					}
 				}
-			}
+			} );
 		}
=20
 		return this;
 	},
=20
 	removeClass: function( value ) {
-		var classes, elem, cur, curValue, clazz, j, finalValue,
-			i =3D 0;
+		var classNames, cur, curValue, className, i, finalValue;
=20
 		if ( isFunction( value ) ) {
 			return this.each( function( j ) {
@@ -8075,45 +8203,42 @@ jQuery.fn.extend( {
 			return this.attr( "class", "" );
 		}
=20
-		classes =3D classesToArray( value );
+		classNames =3D classesToArray( value );
=20
-		if ( classes.length ) {
-			while ( ( elem =3D this[ i++ ] ) ) {
-				curValue =3D getClass( elem );
+		if ( classNames.length ) {
+			return this.each( function() {
+				curValue =3D getClass( this );
=20
 				// This expression is here for better compressibility (see addClass)
-				cur =3D elem.nodeType =3D=3D=3D 1 && ( " " + stripAndCollapse( curValu=
e ) + " " );
+				cur =3D this.nodeType =3D=3D=3D 1 && ( " " + stripAndCollapse( curValu=
e ) + " " );
=20
 				if ( cur ) {
-					j =3D 0;
-					while ( ( clazz =3D classes[ j++ ] ) ) {
+					for ( i =3D 0; i < classNames.length; i++ ) {
+						className =3D classNames[ i ];
=20
 						// Remove *all* instances
-						while ( cur.indexOf( " " + clazz + " " ) > -1 ) {
-							cur =3D cur.replace( " " + clazz + " ", " " );
+						while ( cur.indexOf( " " + className + " " ) > -1 ) {
+							cur =3D cur.replace( " " + className + " ", " " );
 						}
 					}
=20
 					// Only assign if different to avoid unneeded rendering.
 					finalValue =3D stripAndCollapse( cur );
 					if ( curValue !=3D=3D finalValue ) {
-						elem.setAttribute( "class", finalValue );
+						this.setAttribute( "class", finalValue );
 					}
 				}
-			}
+			} );
 		}
=20
 		return this;
 	},
=20
 	toggleClass: function( value, stateVal ) {
-		var type =3D typeof value,
+		var classNames, className, i, self,
+			type =3D typeof value,
 			isValidValue =3D type =3D=3D=3D "string" || Array.isArray( value );
=20
-		if ( typeof stateVal =3D=3D=3D "boolean" && isValidValue ) {
-			return stateVal ? this.addClass( value ) : this.removeClass( value );
-		}
-
 		if ( isFunction( value ) ) {
 			return this.each( function( i ) {
 				jQuery( this ).toggleClass(
@@ -8123,17 +8248,20 @@ jQuery.fn.extend( {
 			} );
 		}
=20
-		return this.each( function() {
-			var className, i, self, classNames;
+		if ( typeof stateVal =3D=3D=3D "boolean" && isValidValue ) {
+			return stateVal ? this.addClass( value ) : this.removeClass( value );
+		}
+
+		classNames =3D classesToArray( value );
=20
+		return this.each( function() {
 			if ( isValidValue ) {
=20
 				// Toggle individual class names
-				i =3D 0;
 				self =3D jQuery( this );
-				classNames =3D classesToArray( value );
=20
-				while ( ( className =3D classNames[ i++ ] ) ) {
+				for ( i =3D 0; i < classNames.length; i++ ) {
+					className =3D classNames[ i ];
=20
 					// Check each className given, space separated list
 					if ( self.hasClass( className ) ) {
@@ -8159,8 +8287,8 @@ jQuery.fn.extend( {
 				if ( this.setAttribute ) {
 					this.setAttribute( "class",
 						className || value =3D=3D=3D false ?
-						"" :
-						dataPriv.get( this, "__className__" ) || ""
+							"" :
+							dataPriv.get( this, "__className__" ) || ""
 					);
 				}
 			}
@@ -8175,7 +8303,7 @@ jQuery.fn.extend( {
 		while ( ( elem =3D this[ i++ ] ) ) {
 			if ( elem.nodeType =3D=3D=3D 1 &&
 				( " " + stripAndCollapse( getClass( elem ) ) + " " ).indexOf( classNam=
e ) > -1 ) {
-					return true;
+				return true;
 			}
 		}
=20
@@ -8267,7 +8395,7 @@ jQuery.extend( {
 					val :
=20
 					// Support: IE <=3D10 - 11 only
-					// option.text throws exceptions (#14686, #14858)
+					// option.text throws exceptions (trac-14686, trac-14858)
 					// Strip and collapse whitespace
 					// https://html.spec.whatwg.org/#strip-and-collapse-whitespace
 					stripAndCollapse( jQuery.text( elem ) );
@@ -8294,7 +8422,7 @@ jQuery.extend( {
 					option =3D options[ i ];
=20
 					// Support: IE <=3D9 only
-					// IE8-9 doesn't update selected after form reset (#2551)
+					// IE8-9 doesn't update selected after form reset (trac-2551)
 					if ( ( option.selected || i =3D=3D=3D index ) &&
=20
 							// Don't return options that are disabled or in a disabled optgroup
@@ -8368,9 +8496,39 @@ jQuery.each( [ "radio", "checkbox" ], function() {
=20
=20
 // Return jQuery for attributes-only inclusion
+var location =3D window.location;
+
+var nonce =3D { guid: Date.now() };
+
+var rquery =3D ( /\?/ );
+
+
=20
+// Cross-browser xml parsing
+jQuery.parseXML =3D function( data ) {
+	var xml, parserErrorElem;
+	if ( !data || typeof data !=3D=3D "string" ) {
+		return null;
+	}
+
+	// Support: IE 9 - 11 only
+	// IE throws on parseFromString with invalid input.
+	try {
+		xml =3D ( new window.DOMParser() ).parseFromString( data, "text/xml" );
+	} catch ( e ) {}
=20
-support.focusin =3D "onfocusin" in window;
+	parserErrorElem =3D xml && xml.getElementsByTagName( "parsererror" )[ 0 ];
+	if ( !xml || parserErrorElem ) {
+		jQuery.error( "Invalid XML: " + (
+			parserErrorElem ?
+				jQuery.map( parserErrorElem.childNodes, function( el ) {
+					return el.textContent;
+				} ).join( "\n" ) :
+				data
+		) );
+	}
+	return xml;
+};
=20
=20
 var rfocusMorph =3D /^(?:focusinfocus|focusoutblur)$/,
@@ -8437,8 +8595,8 @@ jQuery.extend( jQuery.event, {
 			return;
 		}
=20
-		// Determine event propagation path in advance, per W3C events spec (#99=
51)
-		// Bubble up to document, then to window; watch for a global ownerDocume=
nt var (#9724)
+		// Determine event propagation path in advance, per W3C events spec (tra=
c-9951)
+		// Bubble up to document, then to window; watch for a global ownerDocume=
nt var (trac-9724)
 		if ( !onlyHandlers && !special.noBubble && !isWindow( elem ) ) {
=20
 			bubbleType =3D special.delegateType || type;
@@ -8465,7 +8623,7 @@ jQuery.extend( jQuery.event, {
 				special.bindType || type;
=20
 			// jQuery handler
-			handle =3D ( dataPriv.get( cur, "events" ) || {} )[ event.type ] &&
+			handle =3D ( dataPriv.get( cur, "events" ) || Object.create( null ) )[ =
event.type ] &&
 				dataPriv.get( cur, "handle" );
 			if ( handle ) {
 				handle.apply( cur, data );
@@ -8490,7 +8648,7 @@ jQuery.extend( jQuery.event, {
 				acceptData( elem ) ) {
=20
 				// Call a native DOM method on the target with the same name as the ev=
ent.
-				// Don't do default actions on window, that's where global variables b=
e (#6170)
+				// Don't do default actions on window, that's where global variables b=
e (trac-6170)
 				if ( ontype && isFunction( elem[ type ] ) && !isWindow( elem ) ) {
=20
 					// Don't re-trigger an onFOO event when we call its FOO() method
@@ -8558,77 +8716,6 @@ jQuery.fn.extend( {
 } );
=20
=20
-// Support: Firefox <=3D44
-// Firefox doesn't have focus(in | out) events
-// Related ticket - https://bugzilla.mozilla.org/show_bug.cgi?id=3D687787
-//
-// Support: Chrome <=3D48 - 49, Safari <=3D9.0 - 9.1
-// focus(in | out) events fire after focus & blur events,
-// which is spec violation - http://www.w3.org/TR/DOM-Level-3-Events/#even=
ts-focusevent-event-order
-// Related ticket - https://bugs.chromium.org/p/chromium/issues/detail?id=
=3D449857
-if ( !support.focusin ) {
-	jQuery.each( { focus: "focusin", blur: "focusout" }, function( orig, fix =
) {
-
-		// Attach a single capturing handler on the document while someone wants=
 focusin/focusout
-		var handler =3D function( event ) {
-			jQuery.event.simulate( fix, event.target, jQuery.event.fix( event ) );
-		};
-
-		jQuery.event.special[ fix ] =3D {
-			setup: function() {
-				var doc =3D this.ownerDocument || this,
-					attaches =3D dataPriv.access( doc, fix );
-
-				if ( !attaches ) {
-					doc.addEventListener( orig, handler, true );
-				}
-				dataPriv.access( doc, fix, ( attaches || 0 ) + 1 );
-			},
-			teardown: function() {
-				var doc =3D this.ownerDocument || this,
-					attaches =3D dataPriv.access( doc, fix ) - 1;
-
-				if ( !attaches ) {
-					doc.removeEventListener( orig, handler, true );
-					dataPriv.remove( doc, fix );
-
-				} else {
-					dataPriv.access( doc, fix, attaches );
-				}
-			}
-		};
-	} );
-}
-var location =3D window.location;
-
-var nonce =3D Date.now();
-
-var rquery =3D ( /\?/ );
-
-
-
-// Cross-browser xml parsing
-jQuery.parseXML =3D function( data ) {
-	var xml;
-	if ( !data || typeof data !=3D=3D "string" ) {
-		return null;
-	}
-
-	// Support: IE 9 - 11 only
-	// IE throws on parseFromString with invalid input.
-	try {
-		xml =3D ( new window.DOMParser() ).parseFromString( data, "text/xml" );
-	} catch ( e ) {
-		xml =3D undefined;
-	}
-
-	if ( !xml || xml.getElementsByTagName( "parsererror" ).length ) {
-		jQuery.error( "Invalid XML: " + data );
-	}
-	return xml;
-};
-
-
 var
 	rbracket =3D /\[\]$/,
 	rCRLF =3D /\r?\n/g,
@@ -8724,16 +8811,14 @@ jQuery.fn.extend( {
 			// Can add propHook for "elements" to filter or add form elements
 			var elements =3D jQuery.prop( this, "elements" );
 			return elements ? jQuery.makeArray( elements ) : this;
-		} )
-		.filter( function() {
+		} ).filter( function() {
 			var type =3D this.type;
=20
 			// Use .is( ":disabled" ) so that fieldset[disabled] works
 			return this.name && !jQuery( this ).is( ":disabled" ) &&
 				rsubmittable.test( this.nodeName ) && !rsubmitterTypes.test( type ) &&
 				( this.checked || !rcheckableType.test( type ) );
-		} )
-		.map( function( i, elem ) {
+		} ).map( function( _i, elem ) {
 			var val =3D jQuery( this ).val();
=20
 			if ( val =3D=3D null ) {
@@ -8758,7 +8843,7 @@ var
 	rantiCache =3D /([?&])_=3D[^&]*/,
 	rheaders =3D /^(.*?):[ \t]*([^\r\n]*)$/mg,
=20
-	// #7653, #8125, #8152: local protocol detection
+	// trac-7653, trac-8125, trac-8152: local protocol detection
 	rlocalProtocol =3D /^(?:about|app|app-storage|.+-extension|file|res|widge=
t):$/,
 	rnoContent =3D /^(?:GET|HEAD)$/,
 	rprotocol =3D /^\/\//,
@@ -8781,12 +8866,13 @@ var
 	 */
 	transports =3D {},
=20
-	// Avoid comment-prolog char sequence (#10098); must appease lint and eva=
de compression
+	// Avoid comment-prolog char sequence (trac-10098); must appease lint and=
 evade compression
 	allTypes =3D "*/".concat( "*" ),
=20
 	// Anchor tag for parsing the document origin
 	originAnchor =3D document.createElement( "a" );
-	originAnchor.href =3D location.href;
+
+originAnchor.href =3D location.href;
=20
 // Base "constructor" for jQuery.ajaxPrefilter and jQuery.ajaxTransport
 function addToPrefiltersOrTransports( structure ) {
@@ -8851,7 +8937,7 @@ function inspectPrefiltersOrTransports( structure, op=
tions, originalOptions, jqX
=20
 // A special extend for ajax options
 // that takes "flat" options (not to be deep extended)
-// Fixes #9887
+// Fixes trac-9887
 function ajaxExtend( target, src ) {
 	var key, deep,
 		flatOptions =3D jQuery.ajaxSettings.flatOptions || {};
@@ -9167,8 +9253,8 @@ jQuery.extend( {
 			// Context for global events is callbackContext if it is a DOM node or =
jQuery collection
 			globalEventContext =3D s.context &&
 				( callbackContext.nodeType || callbackContext.jquery ) ?
-					jQuery( callbackContext ) :
-					jQuery.event,
+				jQuery( callbackContext ) :
+				jQuery.event,
=20
 			// Deferreds
 			deferred =3D jQuery.Deferred(),
@@ -9262,12 +9348,12 @@ jQuery.extend( {
 		deferred.promise( jqXHR );
=20
 		// Add protocol if not provided (prefilters might expect it)
-		// Handle falsy url in the settings object (#10093: consistency with old=
 signature)
+		// Handle falsy url in the settings object (trac-10093: consistency with=
 old signature)
 		// We also use the url parameter if available
 		s.url =3D ( ( url || s.url || location.href ) + "" )
 			.replace( rprotocol, location.protocol + "//" );
=20
-		// Alias method option to type as per ticket #12004
+		// Alias method option to type as per ticket trac-12004
 		s.type =3D options.method || options.type || s.method || s.type;
=20
 		// Extract dataTypes list
@@ -9310,7 +9396,7 @@ jQuery.extend( {
 		}
=20
 		// We can fire global events as of now if asked to
-		// Don't fire events if jQuery.event is undefined in an AMD-usage scenar=
io (#15118)
+		// Don't fire events if jQuery.event is undefined in an AMD-usage scenar=
io (trac-15118)
 		fireGlobals =3D jQuery.event && s.global;
=20
 		// Watch for a new set of requests
@@ -9339,14 +9425,15 @@ jQuery.extend( {
 			if ( s.data && ( s.processData || typeof s.data =3D=3D=3D "string" ) ) {
 				cacheURL +=3D ( rquery.test( cacheURL ) ? "&" : "?" ) + s.data;
=20
-				// #9682: remove data so that it's not used in an eventual retry
+				// trac-9682: remove data so that it's not used in an eventual retry
 				delete s.data;
 			}
=20
 			// Add or update anti-cache param if needed
 			if ( s.cache =3D=3D=3D false ) {
 				cacheURL =3D cacheURL.replace( rantiCache, "$1" );
-				uncached =3D ( rquery.test( cacheURL ) ? "&" : "?" ) + "_=3D" + ( nonc=
e++ ) + uncached;
+				uncached =3D ( rquery.test( cacheURL ) ? "&" : "?" ) + "_=3D" + ( nonc=
e.guid++ ) +
+					uncached;
 			}
=20
 			// Put hash and anti-cache on the URL that will be requested (gh-1732)
@@ -9479,6 +9566,13 @@ jQuery.extend( {
 				response =3D ajaxHandleResponses( s, jqXHR, responses );
 			}
=20
+			// Use a noop converter for missing script but not if jsonp
+			if ( !isSuccess &&
+				jQuery.inArray( "script", s.dataTypes ) > -1 &&
+				jQuery.inArray( "json", s.dataTypes ) < 0 ) {
+				s.converters[ "text script" ] =3D function() {};
+			}
+
 			// Convert no matter what (that way responseXXX fields are always set)
 			response =3D ajaxConvert( s, response, jqXHR, isSuccess );
=20
@@ -9569,7 +9663,7 @@ jQuery.extend( {
 	}
 } );
=20
-jQuery.each( [ "get", "post" ], function( i, method ) {
+jQuery.each( [ "get", "post" ], function( _i, method ) {
 	jQuery[ method ] =3D function( url, data, callback, type ) {
=20
 		// Shift arguments if data argument was omitted
@@ -9590,12 +9684,21 @@ jQuery.each( [ "get", "post" ], function( i, method=
 ) {
 	};
 } );
=20
+jQuery.ajaxPrefilter( function( s ) {
+	var i;
+	for ( i in s.headers ) {
+		if ( i.toLowerCase() =3D=3D=3D "content-type" ) {
+			s.contentType =3D s.headers[ i ] || "";
+		}
+	}
+} );
+
=20
-jQuery._evalUrl =3D function( url, options ) {
+jQuery._evalUrl =3D function( url, options, doc ) {
 	return jQuery.ajax( {
 		url: url,
=20
-		// Make this explicit, since user can override this through ajaxSetup (#=
11264)
+		// Make this explicit, since user can override this through ajaxSetup (t=
rac-11264)
 		type: "GET",
 		dataType: "script",
 		cache: true,
@@ -9609,7 +9712,7 @@ jQuery._evalUrl =3D function( url, options ) {
 			"text script": function() {}
 		},
 		dataFilter: function( response ) {
-			jQuery.globalEval( response, options );
+			jQuery.globalEval( response, options, doc );
 		}
 	} );
 };
@@ -9704,7 +9807,7 @@ var xhrSuccessStatus =3D {
 		0: 200,
=20
 		// Support: IE <=3D9 only
-		// #1450: sometimes IE returns 1223 when it should be 204
+		// trac-1450: sometimes IE returns 1223 when it should be 204
 		1223: 204
 	},
 	xhrSupported =3D jQuery.ajaxSettings.xhr();
@@ -9776,7 +9879,7 @@ jQuery.ajaxTransport( function( options ) {
 								} else {
 									complete(
=20
-										// File: protocol always yields status 0; see #8605, #14207
+										// File: protocol always yields status 0; see trac-8605, trac-14=
207
 										xhr.status,
 										xhr.statusText
 									);
@@ -9837,7 +9940,7 @@ jQuery.ajaxTransport( function( options ) {
 					xhr.send( options.hasContent && options.data || null );
 				} catch ( e ) {
=20
-					// #14683: Only rethrow if this hasn't been notified as an error yet
+					// trac-14683: Only rethrow if this hasn't been notified as an error =
yet
 					if ( callback ) {
 						throw e;
 					}
@@ -9931,7 +10034,7 @@ var oldCallbacks =3D [],
 jQuery.ajaxSetup( {
 	jsonp: "callback",
 	jsonpCallback: function() {
-		var callback =3D oldCallbacks.pop() || ( jQuery.expando + "_" + ( nonce+=
+ ) );
+		var callback =3D oldCallbacks.pop() || ( jQuery.expando + "_" + ( nonce.=
guid++ ) );
 		this[ callback ] =3D true;
 		return callback;
 	}
@@ -10148,23 +10251,6 @@ jQuery.fn.load =3D function( url, params, callback=
 ) {
=20
=20
=20
-// Attach a bunch of functions for handling common AJAX events
-jQuery.each( [
-	"ajaxStart",
-	"ajaxStop",
-	"ajaxComplete",
-	"ajaxError",
-	"ajaxSuccess",
-	"ajaxSend"
-], function( i, type ) {
-	jQuery.fn[ type ] =3D function( fn ) {
-		return this.on( type, fn );
-	};
-} );
-
-
-
-
 jQuery.expr.pseudos.animated =3D function( elem ) {
 	return jQuery.grep( jQuery.timers, function( fn ) {
 		return elem =3D=3D=3D fn.elem;
@@ -10371,7 +10457,7 @@ jQuery.each( { scrollLeft: "pageXOffset", scrollTop=
: "pageYOffset" }, function(
 // Blink bug: https://bugs.chromium.org/p/chromium/issues/detail?id=3D5893=
47
 // getComputedStyle returns percent when specified for top/left/bottom/rig=
ht;
 // rather than make the css module depend on the offset module, just check=
 for it here
-jQuery.each( [ "top", "left" ], function( i, prop ) {
+jQuery.each( [ "top", "left" ], function( _i, prop ) {
 	jQuery.cssHooks[ prop ] =3D addGetHookIf( support.pixelPosition,
 		function( elem, computed ) {
 			if ( computed ) {
@@ -10389,8 +10475,11 @@ jQuery.each( [ "top", "left" ], function( i, prop =
) {
=20
 // Create innerHeight, innerWidth, height, width, outerHeight and outerWid=
th methods
 jQuery.each( { Height: "height", Width: "width" }, function( name, type ) {
-	jQuery.each( { padding: "inner" + name, content: type, "": "outer" + name=
 },
-		function( defaultExtra, funcName ) {
+	jQuery.each( {
+		padding: "inner" + name,
+		content: type,
+		"": "outer" + name
+	}, function( defaultExtra, funcName ) {
=20
 		// Margin is only for outerHeight, outerWidth
 		jQuery.fn[ funcName ] =3D function( margin, value ) {
@@ -10434,25 +10523,19 @@ jQuery.each( { Height: "height", Width: "width" }=
, function( name, type ) {
 } );
=20
=20
-jQuery.each( ( "blur focus focusin focusout resize scroll click dblclick "=
 +
-	"mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave " +
-	"change select submit keydown keypress keyup contextmenu" ).split( " " ),
-	function( i, name ) {
-
-	// Handle event binding
-	jQuery.fn[ name ] =3D function( data, fn ) {
-		return arguments.length > 0 ?
-			this.on( name, null, data, fn ) :
-			this.trigger( name );
+jQuery.each( [
+	"ajaxStart",
+	"ajaxStop",
+	"ajaxComplete",
+	"ajaxError",
+	"ajaxSuccess",
+	"ajaxSend"
+], function( _i, type ) {
+	jQuery.fn[ type ] =3D function( fn ) {
+		return this.on( type, fn );
 	};
 } );
=20
-jQuery.fn.extend( {
-	hover: function( fnOver, fnOut ) {
-		return this.mouseenter( fnOver ).mouseleave( fnOut || fnOver );
-	}
-} );
-
=20
=20
=20
@@ -10474,9 +10557,39 @@ jQuery.fn.extend( {
 		return arguments.length =3D=3D=3D 1 ?
 			this.off( selector, "**" ) :
 			this.off( types, selector || "**", fn );
+	},
+
+	hover: function( fnOver, fnOut ) {
+		return this
+			.on( "mouseenter", fnOver )
+			.on( "mouseleave", fnOut || fnOver );
 	}
 } );
=20
+jQuery.each(
+	( "blur focus focusin focusout resize scroll click dblclick " +
+	"mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave " +
+	"change select submit keydown keypress keyup contextmenu" ).split( " " ),
+	function( _i, name ) {
+
+		// Handle event binding
+		jQuery.fn[ name ] =3D function( data, fn ) {
+			return arguments.length > 0 ?
+				this.on( name, null, data, fn ) :
+				this.trigger( name );
+		};
+	}
+);
+
+
+
+
+// Support: Android <=3D4.0 only
+// Make sure we trim BOM and NBSP
+// Require that the "whitespace run" starts from a non-whitespace
+// to avoid O(N^2) behavior when the engine would try matching "\s+$" at e=
ach space position.
+var rtrim =3D /^[\s\uFEFF\xA0]+|([^\s\uFEFF\xA0])[\s\uFEFF\xA0]+$/g;
+
 // Bind a function to a context, optionally partially applying any
 // arguments.
 // jQuery.proxy is deprecated to promote standards (specifically Function#=
bind)
@@ -10539,6 +10652,11 @@ jQuery.isNumeric =3D function( obj ) {
 		!isNaN( obj - parseFloat( obj ) );
 };
=20
+jQuery.trim =3D function( text ) {
+	return text =3D=3D null ?
+		"" :
+		( text + "" ).replace( rtrim, "$1" );
+};
=20
=20
=20
@@ -10585,9 +10703,9 @@ jQuery.noConflict =3D function( deep ) {
 };
=20
 // Expose jQuery and $ identifiers, even in AMD
-// (#7102#comment:10, https://github.com/jquery/jquery/pull/557)
-// and CommonJS for browser emulators (#13566)
-if ( !noGlobal ) {
+// (trac-7102#comment:10, https://github.com/jquery/jquery/pull/557)
+// and CommonJS for browser emulators (trac-13566)
+if ( typeof noGlobal =3D=3D=3D "undefined" ) {
 	window.jQuery =3D window.$ =3D jQuery;
 }
=20
diff --git a/layerindex/static/js/jquery-3.7.1.min.js b/layerindex/static/j=
s/jquery-3.7.1.min.js
new file mode 100644
index 0000000..7f37b5d
--- /dev/null
+++ b/layerindex/static/js/jquery-3.7.1.min.js
@@ -0,0 +1,2 @@
+/*! jQuery v3.7.1 | (c) OpenJS Foundation and other contributors | jquery.=
org/license */
+!function(e,t){"use strict";"object"=3D=3Dtypeof module&&"object"=3D=3Dtyp=
eof module.exports?module.exports=3De.document?t(e,!0):function(e){if(!e.do=
cument)throw new Error("jQuery requires a window with a document");return t=
(e)}:t(e)}("undefined"!=3Dtypeof window?window:this,function(ie,e){"use str=
ict";var oe=3D[],r=3DObject.getPrototypeOf,ae=3Doe.slice,g=3Doe.flat?functi=
on(e){return oe.flat.call(e)}:function(e){return oe.concat.apply([],e)},s=
=3Doe.push,se=3Doe.indexOf,n=3D{},i=3Dn.toString,ue=3Dn.hasOwnProperty,o=3D=
ue.toString,a=3Do.call(Object),le=3D{},v=3Dfunction(e){return"function"=3D=
=3Dtypeof e&&"number"!=3Dtypeof e.nodeType&&"function"!=3Dtypeof e.item},y=
=3Dfunction(e){return null!=3De&&e=3D=3D=3De.window},C=3Die.document,u=3D{t=
ype:!0,src:!0,nonce:!0,noModule:!0};function m(e,t,n){var r,i,o=3D(n=3Dn||C=
).createElement("script");if(o.text=3De,t)for(r in u)(i=3Dt[r]||t.getAttrib=
ute&&t.getAttribute(r))&&o.setAttribute(r,i);n.head.appendChild(o).parentNo=
de.removeChild(o)}function x(e){return null=3D=3De?e+"":"object"=3D=3Dtypeo=
f e||"function"=3D=3Dtypeof e?n[i.call(e)]||"object":typeof e}var t=3D"3.7.=
1",l=3D/HTML$/i,ce=3Dfunction(e,t){return new ce.fn.init(e,t)};function c(e=
){var t=3D!!e&&"length"in e&&e.length,n=3Dx(e);return!v(e)&&!y(e)&&("array"=
=3D=3D=3Dn||0=3D=3D=3Dt||"number"=3D=3Dtypeof t&&0<t&&t-1 in e)}function fe=
(e,t){return e.nodeName&&e.nodeName.toLowerCase()=3D=3D=3Dt.toLowerCase()}c=
e.fn=3Dce.prototype=3D{jquery:t,constructor:ce,length:0,toArray:function(){=
return ae.call(this)},get:function(e){return null=3D=3De?ae.call(this):e<0?=
this[e+this.length]:this[e]},pushStack:function(e){var t=3Dce.merge(this.co=
nstructor(),e);return t.prevObject=3Dthis,t},each:function(e){return ce.eac=
h(this,e)},map:function(n){return this.pushStack(ce.map(this,function(e,t){=
return n.call(e,t,e)}))},slice:function(){return this.pushStack(ae.apply(th=
is,arguments))},first:function(){return this.eq(0)},last:function(){return =
this.eq(-1)},even:function(){return this.pushStack(ce.grep(this,function(e,=
t){return(t+1)%2}))},odd:function(){return this.pushStack(ce.grep(this,func=
tion(e,t){return t%2}))},eq:function(e){var t=3Dthis.length,n=3D+e+(e<0?t:0=
);return this.pushStack(0<=3Dn&&n<t?[this[n]]:[])},end:function(){return th=
is.prevObject||this.constructor()},push:s,sort:oe.sort,splice:oe.splice},ce=
.extend=3Dce.fn.extend=3Dfunction(){var e,t,n,r,i,o,a=3Darguments[0]||{},s=
=3D1,u=3Darguments.length,l=3D!1;for("boolean"=3D=3Dtypeof a&&(l=3Da,a=3Dar=
guments[s]||{},s++),"object"=3D=3Dtypeof a||v(a)||(a=3D{}),s=3D=3D=3Du&&(a=
=3Dthis,s--);s<u;s++)if(null!=3D(e=3Darguments[s]))for(t in e)r=3De[t],"__p=
roto__"!=3D=3Dt&&a!=3D=3Dr&&(l&&r&&(ce.isPlainObject(r)||(i=3DArray.isArray=
(r)))?(n=3Da[t],o=3Di&&!Array.isArray(n)?[]:i||ce.isPlainObject(n)?n:{},i=
=3D!1,a[t]=3Dce.extend(l,o,r)):void 0!=3D=3Dr&&(a[t]=3Dr));return a},ce.ext=
end({expando:"jQuery"+(t+Math.random()).replace(/\D/g,""),isReady:!0,error:=
function(e){throw new Error(e)},noop:function(){},isPlainObject:function(e)=
{var t,n;return!(!e||"[object Object]"!=3D=3Di.call(e))&&(!(t=3Dr(e))||"fun=
ction"=3D=3Dtypeof(n=3Due.call(t,"constructor")&&t.constructor)&&o.call(n)=
=3D=3D=3Da)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},=
globalEval:function(e,t,n){m(e,{nonce:t&&t.nonce},n)},each:function(e,t){va=
r n,r=3D0;if(c(e)){for(n=3De.length;r<n;r++)if(!1=3D=3D=3Dt.call(e[r],r,e[r=
]))break}else for(r in e)if(!1=3D=3D=3Dt.call(e[r],r,e[r]))break;return e},=
text:function(e){var t,n=3D"",r=3D0,i=3De.nodeType;if(!i)while(t=3De[r++])n=
+=3Dce.text(t);return 1=3D=3D=3Di||11=3D=3D=3Di?e.textContent:9=3D=3D=3Di?e=
.documentElement.textContent:3=3D=3D=3Di||4=3D=3D=3Di?e.nodeValue:n},makeAr=
ray:function(e,t){var n=3Dt||[];return null!=3De&&(c(Object(e))?ce.merge(n,=
"string"=3D=3Dtypeof e?[e]:e):s.call(n,e)),n},inArray:function(e,t,n){retur=
n null=3D=3Dt?-1:se.call(t,e,n)},isXMLDoc:function(e){var t=3De&&e.namespac=
eURI,n=3De&&(e.ownerDocument||e).documentElement;return!l.test(t||n&&n.node=
Name||"HTML")},merge:function(e,t){for(var n=3D+t.length,r=3D0,i=3De.length=
;r<n;r++)e[i++]=3Dt[r];return e.length=3Di,e},grep:function(e,t,n){for(var =
r=3D[],i=3D0,o=3De.length,a=3D!n;i<o;i++)!t(e[i],i)!=3D=3Da&&r.push(e[i]);r=
eturn r},map:function(e,t,n){var r,i,o=3D0,a=3D[];if(c(e))for(r=3De.length;=
o<r;o++)null!=3D(i=3Dt(e[o],o,n))&&a.push(i);else for(o in e)null!=3D(i=3Dt=
(e[o],o,n))&&a.push(i);return g(a)},guid:1,support:le}),"function"=3D=3Dtyp=
eof Symbol&&(ce.fn[Symbol.iterator]=3Doe[Symbol.iterator]),ce.each("Boolean=
 Number String Function Array Date RegExp Object Error Symbol".split(" "),f=
unction(e,t){n["[object "+t+"]"]=3Dt.toLowerCase()});var pe=3Doe.pop,de=3Do=
e.sort,he=3Doe.splice,ge=3D"[\\x20\\t\\r\\n\\f]",ve=3Dnew RegExp("^"+ge+"+|=
((?:^|[^\\\\])(?:\\\\.)*)"+ge+"+$","g");ce.contains=3Dfunction(e,t){var n=
=3Dt&&t.parentNode;return e=3D=3D=3Dn||!(!n||1!=3D=3Dn.nodeType||!(e.contai=
ns?e.contains(n):e.compareDocumentPosition&&16&e.compareDocumentPosition(n)=
))};var f=3D/([\0-\x1f\x7f]|^-?\d)|^-$|[^\x80-\uFFFF\w-]/g;function p(e,t){=
return t?"\0"=3D=3D=3De?"\ufffd":e.slice(0,-1)+"\\"+e.charCodeAt(e.length-1=
).toString(16)+" ":"\\"+e}ce.escapeSelector=3Dfunction(e){return(e+"").repl=
ace(f,p)};var ye=3DC,me=3Ds;!function(){var e,b,w,o,a,T,r,C,d,i,k=3Dme,S=3D=
ce.expando,E=3D0,n=3D0,s=3DW(),c=3DW(),u=3DW(),h=3DW(),l=3Dfunction(e,t){re=
turn e=3D=3D=3Dt&&(a=3D!0),0},f=3D"checked|selected|async|autofocus|autopla=
y|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required=
|scoped",t=3D"(?:\\\\[\\da-fA-F]{1,6}"+ge+"?|\\\\[^\\r\\n\\f]|[\\w-]|[^\0-\=
\x7f])+",p=3D"\\["+ge+"*("+t+")(?:"+ge+"*([*^$|!~]?=3D)"+ge+"*(?:'((?:\\\\.=
|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|("+t+"))|)"+ge+"*\\]",g=3D":("+t+"=
)(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\=
\\()[\\]]|"+p+")*)|.*)\\)|)",v=3Dnew RegExp(ge+"+","g"),y=3Dnew RegExp("^"+=
ge+"*,"+ge+"*"),m=3Dnew RegExp("^"+ge+"*([>+~]|"+ge+")"+ge+"*"),x=3Dnew Reg=
Exp(ge+"|>"),j=3Dnew RegExp(g),A=3Dnew RegExp("^"+t+"$"),D=3D{ID:new RegExp=
("^#("+t+")"),CLASS:new RegExp("^\\.("+t+")"),TAG:new RegExp("^("+t+"|[*])"=
),ATTR:new RegExp("^"+p),PSEUDO:new RegExp("^"+g),CHILD:new RegExp("^:(only=
|first|last|nth|nth-last)-(child|of-type)(?:\\("+ge+"*(even|odd|(([+-]|)(\\=
d*)n|)"+ge+"*(?:([+-]|)"+ge+"*(\\d+)|))"+ge+"*\\)|)","i"),bool:new RegExp("=
^(?:"+f+")$","i"),needsContext:new RegExp("^"+ge+"*[>+~]|:(even|odd|eq|gt|l=
t|nth|first|last)(?:\\("+ge+"*((?:-\\d)?\\d*)"+ge+"*\\)|)(?=3D[^-]|$)","i")=
},N=3D/^(?:input|select|textarea|button)$/i,q=3D/^h\d$/i,L=3D/^(?:#([\w-]+)=
|(\w+)|\.([\w-]+))$/,H=3D/[+~]/,O=3Dnew RegExp("\\\\[\\da-fA-F]{1,6}"+ge+"?=
|\\\\([^\\r\\n\\f])","g"),P=3Dfunction(e,t){var n=3D"0x"+e.slice(1)-65536;r=
eturn t||(n<0?String.fromCharCode(n+65536):String.fromCharCode(n>>10|55296,=
1023&n|56320))},M=3Dfunction(){V()},R=3DJ(function(e){return!0=3D=3D=3De.di=
sabled&&fe(e,"fieldset")},{dir:"parentNode",next:"legend"});try{k.apply(oe=
=3Dae.call(ye.childNodes),ye.childNodes),oe[ye.childNodes.length].nodeType}=
catch(e){k=3D{apply:function(e,t){me.apply(e,ae.call(t))},call:function(e){=
me.apply(e,ae.call(arguments,1))}}}function I(t,e,n,r){var i,o,a,s,u,l,c,f=
=3De&&e.ownerDocument,p=3De?e.nodeType:9;if(n=3Dn||[],"string"!=3Dtypeof t|=
|!t||1!=3D=3Dp&&9!=3D=3Dp&&11!=3D=3Dp)return n;if(!r&&(V(e),e=3De||T,C)){if=
(11!=3D=3Dp&&(u=3DL.exec(t)))if(i=3Du[1]){if(9=3D=3D=3Dp){if(!(a=3De.getEle=
mentById(i)))return n;if(a.id=3D=3D=3Di)return k.call(n,a),n}else if(f&&(a=
=3Df.getElementById(i))&&I.contains(e,a)&&a.id=3D=3D=3Di)return k.call(n,a)=
,n}else{if(u[2])return k.apply(n,e.getElementsByTagName(t)),n;if((i=3Du[3])=
&&e.getElementsByClassName)return k.apply(n,e.getElementsByClassName(i)),n}=
if(!(h[t+" "]||d&&d.test(t))){if(c=3Dt,f=3De,1=3D=3D=3Dp&&(x.test(t)||m.tes=
t(t))){(f=3DH.test(t)&&U(e.parentNode)||e)=3D=3De&&le.scope||((s=3De.getAtt=
ribute("id"))?s=3Dce.escapeSelector(s):e.setAttribute("id",s=3DS)),o=3D(l=
=3DY(t)).length;while(o--)l[o]=3D(s?"#"+s:":scope")+" "+Q(l[o]);c=3Dl.join(=
",")}try{return k.apply(n,f.querySelectorAll(c)),n}catch(e){h(t,!0)}finally=
{s=3D=3D=3DS&&e.removeAttribute("id")}}}return re(t.replace(ve,"$1"),e,n,r)=
}function W(){var r=3D[];return function e(t,n){return r.push(t+" ")>b.cach=
eLength&&delete e[r.shift()],e[t+" "]=3Dn}}function F(e){return e[S]=3D!0,e=
}function $(e){var t=3DT.createElement("fieldset");try{return!!e(t)}catch(e=
){return!1}finally{t.parentNode&&t.parentNode.removeChild(t),t=3Dnull}}func=
tion B(t){return function(e){return fe(e,"input")&&e.type=3D=3D=3Dt}}functi=
on _(t){return function(e){return(fe(e,"input")||fe(e,"button"))&&e.type=3D=
=3D=3Dt}}function z(t){return function(e){return"form"in e?e.parentNode&&!1=
=3D=3D=3De.disabled?"label"in e?"label"in e.parentNode?e.parentNode.disable=
d=3D=3D=3Dt:e.disabled=3D=3D=3Dt:e.isDisabled=3D=3D=3Dt||e.isDisabled!=3D=
=3D!t&&R(e)=3D=3D=3Dt:e.disabled=3D=3D=3Dt:"label"in e&&e.disabled=3D=3D=3D=
t}}function X(a){return F(function(o){return o=3D+o,F(function(e,t){var n,r=
=3Da([],e.length,o),i=3Dr.length;while(i--)e[n=3Dr[i]]&&(e[n]=3D!(t[n]=3De[=
n]))})})}function U(e){return e&&"undefined"!=3Dtypeof e.getElementsByTagNa=
me&&e}function V(e){var t,n=3De?e.ownerDocument||e:ye;return n!=3DT&&9=3D=
=3D=3Dn.nodeType&&n.documentElement&&(r=3D(T=3Dn).documentElement,C=3D!ce.i=
sXMLDoc(T),i=3Dr.matches||r.webkitMatchesSelector||r.msMatchesSelector,r.ms=
MatchesSelector&&ye!=3DT&&(t=3DT.defaultView)&&t.top!=3D=3Dt&&t.addEventLis=
tener("unload",M),le.getById=3D$(function(e){return r.appendChild(e).id=3Dc=
e.expando,!T.getElementsByName||!T.getElementsByName(ce.expando).length}),l=
e.disconnectedMatch=3D$(function(e){return i.call(e,"*")}),le.scope=3D$(fun=
ction(){return T.querySelectorAll(":scope")}),le.cssHas=3D$(function(){try{=
return T.querySelector(":has(*,:jqfake)"),!1}catch(e){return!0}}),le.getByI=
d?(b.filter.ID=3Dfunction(e){var t=3De.replace(O,P);return function(e){retu=
rn e.getAttribute("id")=3D=3D=3Dt}},b.find.ID=3Dfunction(e,t){if("undefined=
"!=3Dtypeof t.getElementById&&C){var n=3Dt.getElementById(e);return n?[n]:[=
]}}):(b.filter.ID=3Dfunction(e){var n=3De.replace(O,P);return function(e){v=
ar t=3D"undefined"!=3Dtypeof e.getAttributeNode&&e.getAttributeNode("id");r=
eturn t&&t.value=3D=3D=3Dn}},b.find.ID=3Dfunction(e,t){if("undefined"!=3Dty=
peof t.getElementById&&C){var n,r,i,o=3Dt.getElementById(e);if(o){if((n=3Do=
.getAttributeNode("id"))&&n.value=3D=3D=3De)return[o];i=3Dt.getElementsByNa=
me(e),r=3D0;while(o=3Di[r++])if((n=3Do.getAttributeNode("id"))&&n.value=3D=
=3D=3De)return[o]}return[]}}),b.find.TAG=3Dfunction(e,t){return"undefined"!=
=3Dtypeof t.getElementsByTagName?t.getElementsByTagName(e):t.querySelectorA=
ll(e)},b.find.CLASS=3Dfunction(e,t){if("undefined"!=3Dtypeof t.getElementsB=
yClassName&&C)return t.getElementsByClassName(e)},d=3D[],$(function(e){var =
t;r.appendChild(e).innerHTML=3D"<a id=3D'"+S+"' href=3D'' disabled=3D'disab=
led'></a><select id=3D'"+S+"-\r\\' disabled=3D'disabled'><option selected=
=3D''></option></select>",e.querySelectorAll("[selected]").length||d.push("=
\\["+ge+"*(?:value|"+f+")"),e.querySelectorAll("[id~=3D"+S+"-]").length||d.=
push("~=3D"),e.querySelectorAll("a#"+S+"+*").length||d.push(".#.+[+~]"),e.q=
uerySelectorAll(":checked").length||d.push(":checked"),(t=3DT.createElement=
("input")).setAttribute("type","hidden"),e.appendChild(t).setAttribute("nam=
e","D"),r.appendChild(e).disabled=3D!0,2!=3D=3De.querySelectorAll(":disable=
d").length&&d.push(":enabled",":disabled"),(t=3DT.createElement("input")).s=
etAttribute("name",""),e.appendChild(t),e.querySelectorAll("[name=3D'']").l=
ength||d.push("\\["+ge+"*name"+ge+"*=3D"+ge+"*(?:''|\"\")")}),le.cssHas||d.=
push(":has"),d=3Dd.length&&new RegExp(d.join("|")),l=3Dfunction(e,t){if(e=
=3D=3D=3Dt)return a=3D!0,0;var n=3D!e.compareDocumentPosition-!t.compareDoc=
umentPosition;return n||(1&(n=3D(e.ownerDocument||e)=3D=3D(t.ownerDocument|=
|t)?e.compareDocumentPosition(t):1)||!le.sortDetached&&t.compareDocumentPos=
ition(e)=3D=3D=3Dn?e=3D=3D=3DT||e.ownerDocument=3D=3Dye&&I.contains(ye,e)?-=
1:t=3D=3D=3DT||t.ownerDocument=3D=3Dye&&I.contains(ye,t)?1:o?se.call(o,e)-s=
e.call(o,t):0:4&n?-1:1)}),T}for(e in I.matches=3Dfunction(e,t){return I(e,n=
ull,null,t)},I.matchesSelector=3Dfunction(e,t){if(V(e),C&&!h[t+" "]&&(!d||!=
d.test(t)))try{var n=3Di.call(e,t);if(n||le.disconnectedMatch||e.document&&=
11!=3D=3De.document.nodeType)return n}catch(e){h(t,!0)}return 0<I(t,T,null,=
[e]).length},I.contains=3Dfunction(e,t){return(e.ownerDocument||e)!=3DT&&V(=
e),ce.contains(e,t)},I.attr=3Dfunction(e,t){(e.ownerDocument||e)!=3DT&&V(e)=
;var n=3Db.attrHandle[t.toLowerCase()],r=3Dn&&ue.call(b.attrHandle,t.toLowe=
rCase())?n(e,t,!C):void 0;return void 0!=3D=3Dr?r:e.getAttribute(t)},I.erro=
r=3Dfunction(e){throw new Error("Syntax error, unrecognized expression: "+e=
)},ce.uniqueSort=3Dfunction(e){var t,n=3D[],r=3D0,i=3D0;if(a=3D!le.sortStab=
le,o=3D!le.sortStable&&ae.call(e,0),de.call(e,l),a){while(t=3De[i++])t=3D=
=3D=3De[i]&&(r=3Dn.push(i));while(r--)he.call(e,n[r],1)}return o=3Dnull,e},=
ce.fn.uniqueSort=3Dfunction(){return this.pushStack(ce.uniqueSort(ae.apply(=
this)))},(b=3Dce.expr=3D{cacheLength:50,createPseudo:F,match:D,attrHandle:{=
},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},=
"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter=
:{ATTR:function(e){return e[1]=3De[1].replace(O,P),e[3]=3D(e[3]||e[4]||e[5]=
||"").replace(O,P),"~=3D"=3D=3D=3De[2]&&(e[3]=3D" "+e[3]+" "),e.slice(0,4)}=
,CHILD:function(e){return e[1]=3De[1].toLowerCase(),"nth"=3D=3D=3De[1].slic=
e(0,3)?(e[3]||I.error(e[0]),e[4]=3D+(e[4]?e[5]+(e[6]||1):2*("even"=3D=3D=3D=
e[3]||"odd"=3D=3D=3De[3])),e[5]=3D+(e[7]+e[8]||"odd"=3D=3D=3De[3])):e[3]&&I=
.error(e[0]),e},PSEUDO:function(e){var t,n=3D!e[6]&&e[2];return D.CHILD.tes=
t(e[0])?null:(e[3]?e[2]=3De[4]||e[5]||"":n&&j.test(n)&&(t=3DY(n,!0))&&(t=3D=
n.indexOf(")",n.length-t)-n.length)&&(e[0]=3De[0].slice(0,t),e[2]=3Dn.slice=
(0,t)),e.slice(0,3))}},filter:{TAG:function(e){var t=3De.replace(O,P).toLow=
erCase();return"*"=3D=3D=3De?function(){return!0}:function(e){return fe(e,t=
)}},CLASS:function(e){var t=3Ds[e+" "];return t||(t=3Dnew RegExp("(^|"+ge+"=
)"+e+"("+ge+"|$)"))&&s(e,function(e){return t.test("string"=3D=3Dtypeof e.c=
lassName&&e.className||"undefined"!=3Dtypeof e.getAttribute&&e.getAttribute=
("class")||"")})},ATTR:function(n,r,i){return function(e){var t=3DI.attr(e,=
n);return null=3D=3Dt?"!=3D"=3D=3D=3Dr:!r||(t+=3D"","=3D"=3D=3D=3Dr?t=3D=3D=
=3Di:"!=3D"=3D=3D=3Dr?t!=3D=3Di:"^=3D"=3D=3D=3Dr?i&&0=3D=3D=3Dt.indexOf(i):=
"*=3D"=3D=3D=3Dr?i&&-1<t.indexOf(i):"$=3D"=3D=3D=3Dr?i&&t.slice(-i.length)=
=3D=3D=3Di:"~=3D"=3D=3D=3Dr?-1<(" "+t.replace(v," ")+" ").indexOf(i):"|=3D"=
=3D=3D=3Dr&&(t=3D=3D=3Di||t.slice(0,i.length+1)=3D=3D=3Di+"-"))}},CHILD:fun=
ction(d,e,t,h,g){var v=3D"nth"!=3D=3Dd.slice(0,3),y=3D"last"!=3D=3Dd.slice(=
-4),m=3D"of-type"=3D=3D=3De;return 1=3D=3D=3Dh&&0=3D=3D=3Dg?function(e){ret=
urn!!e.parentNode}:function(e,t,n){var r,i,o,a,s,u=3Dv!=3D=3Dy?"nextSibling=
":"previousSibling",l=3De.parentNode,c=3Dm&&e.nodeName.toLowerCase(),f=3D!n=
&&!m,p=3D!1;if(l){if(v){while(u){o=3De;while(o=3Do[u])if(m?fe(o,c):1=3D=3D=
=3Do.nodeType)return!1;s=3Du=3D"only"=3D=3D=3Dd&&!s&&"nextSibling"}return!0=
}if(s=3D[y?l.firstChild:l.lastChild],y&&f){p=3D(a=3D(r=3D(i=3Dl[S]||(l[S]=
=3D{}))[d]||[])[0]=3D=3D=3DE&&r[1])&&r[2],o=3Da&&l.childNodes[a];while(o=3D=
++a&&o&&o[u]||(p=3Da=3D0)||s.pop())if(1=3D=3D=3Do.nodeType&&++p&&o=3D=3D=3D=
e){i[d]=3D[E,a,p];break}}else if(f&&(p=3Da=3D(r=3D(i=3De[S]||(e[S]=3D{}))[d=
]||[])[0]=3D=3D=3DE&&r[1]),!1=3D=3D=3Dp)while(o=3D++a&&o&&o[u]||(p=3Da=3D0)=
||s.pop())if((m?fe(o,c):1=3D=3D=3Do.nodeType)&&++p&&(f&&((i=3Do[S]||(o[S]=
=3D{}))[d]=3D[E,p]),o=3D=3D=3De))break;return(p-=3Dg)=3D=3D=3Dh||p%h=3D=3D0=
&&0<=3Dp/h}}},PSEUDO:function(e,o){var t,a=3Db.pseudos[e]||b.setFilters[e.t=
oLowerCase()]||I.error("unsupported pseudo: "+e);return a[S]?a(o):1<a.lengt=
h?(t=3D[e,e,"",o],b.setFilters.hasOwnProperty(e.toLowerCase())?F(function(e=
,t){var n,r=3Da(e,o),i=3Dr.length;while(i--)e[n=3Dse.call(e,r[i])]=3D!(t[n]=
=3Dr[i])}):function(e){return a(e,0,t)}):a}},pseudos:{not:F(function(e){var=
 r=3D[],i=3D[],s=3Dne(e.replace(ve,"$1"));return s[S]?F(function(e,t,n,r){v=
ar i,o=3Ds(e,null,r,[]),a=3De.length;while(a--)(i=3Do[a])&&(e[a]=3D!(t[a]=
=3Di))}):function(e,t,n){return r[0]=3De,s(r,null,n,i),r[0]=3Dnull,!i.pop()=
}}),has:F(function(t){return function(e){return 0<I(t,e).length}}),contains=
:F(function(t){return t=3Dt.replace(O,P),function(e){return-1<(e.textConten=
t||ce.text(e)).indexOf(t)}}),lang:F(function(n){return A.test(n||"")||I.err=
or("unsupported lang: "+n),n=3Dn.replace(O,P).toLowerCase(),function(e){var=
 t;do{if(t=3DC?e.lang:e.getAttribute("xml:lang")||e.getAttribute("lang"))re=
turn(t=3Dt.toLowerCase())=3D=3D=3Dn||0=3D=3D=3Dt.indexOf(n+"-")}while((e=3D=
e.parentNode)&&1=3D=3D=3De.nodeType);return!1}}),target:function(e){var t=
=3Die.location&&ie.location.hash;return t&&t.slice(1)=3D=3D=3De.id},root:fu=
nction(e){return e=3D=3D=3Dr},focus:function(e){return e=3D=3D=3Dfunction()=
{try{return T.activeElement}catch(e){}}()&&T.hasFocus()&&!!(e.type||e.href|=
|~e.tabIndex)},enabled:z(!1),disabled:z(!0),checked:function(e){return fe(e=
,"input")&&!!e.checked||fe(e,"option")&&!!e.selected},selected:function(e){=
return e.parentNode&&e.parentNode.selectedIndex,!0=3D=3D=3De.selected},empt=
y:function(e){for(e=3De.firstChild;e;e=3De.nextSibling)if(e.nodeType<6)retu=
rn!1;return!0},parent:function(e){return!b.pseudos.empty(e)},header:functio=
n(e){return q.test(e.nodeName)},input:function(e){return N.test(e.nodeName)=
},button:function(e){return fe(e,"input")&&"button"=3D=3D=3De.type||fe(e,"b=
utton")},text:function(e){var t;return fe(e,"input")&&"text"=3D=3D=3De.type=
&&(null=3D=3D(t=3De.getAttribute("type"))||"text"=3D=3D=3Dt.toLowerCase())}=
,first:X(function(){return[0]}),last:X(function(e,t){return[t-1]}),eq:X(fun=
ction(e,t,n){return[n<0?n+t:n]}),even:X(function(e,t){for(var n=3D0;n<t;n+=
=3D2)e.push(n);return e}),odd:X(function(e,t){for(var n=3D1;n<t;n+=3D2)e.pu=
sh(n);return e}),lt:X(function(e,t,n){var r;for(r=3Dn<0?n+t:t<n?t:n;0<=3D--=
r;)e.push(r);return e}),gt:X(function(e,t,n){for(var r=3Dn<0?n+t:n;++r<t;)e=
.push(r);return e})}}).pseudos.nth=3Db.pseudos.eq,{radio:!0,checkbox:!0,fil=
e:!0,password:!0,image:!0})b.pseudos[e]=3DB(e);for(e in{submit:!0,reset:!0}=
)b.pseudos[e]=3D_(e);function G(){}function Y(e,t){var n,r,i,o,a,s,u,l=3Dc[=
e+" "];if(l)return t?0:l.slice(0);a=3De,s=3D[],u=3Db.preFilter;while(a){for=
(o in n&&!(r=3Dy.exec(a))||(r&&(a=3Da.slice(r[0].length)||a),s.push(i=3D[])=
),n=3D!1,(r=3Dm.exec(a))&&(n=3Dr.shift(),i.push({value:n,type:r[0].replace(=
ve," ")}),a=3Da.slice(n.length)),b.filter)!(r=3DD[o].exec(a))||u[o]&&!(r=3D=
u[o](r))||(n=3Dr.shift(),i.push({value:n,type:o,matches:r}),a=3Da.slice(n.l=
ength));if(!n)break}return t?a.length:a?I.error(e):c(e,s).slice(0)}function=
 Q(e){for(var t=3D0,n=3De.length,r=3D"";t<n;t++)r+=3De[t].value;return r}fu=
nction J(a,e,t){var s=3De.dir,u=3De.next,l=3Du||s,c=3Dt&&"parentNode"=3D=3D=
=3Dl,f=3Dn++;return e.first?function(e,t,n){while(e=3De[s])if(1=3D=3D=3De.n=
odeType||c)return a(e,t,n);return!1}:function(e,t,n){var r,i,o=3D[E,f];if(n=
){while(e=3De[s])if((1=3D=3D=3De.nodeType||c)&&a(e,t,n))return!0}else while=
(e=3De[s])if(1=3D=3D=3De.nodeType||c)if(i=3De[S]||(e[S]=3D{}),u&&fe(e,u))e=
=3De[s]||e;else{if((r=3Di[l])&&r[0]=3D=3D=3DE&&r[1]=3D=3D=3Df)return o[2]=
=3Dr[2];if((i[l]=3Do)[2]=3Da(e,t,n))return!0}return!1}}function K(i){return=
 1<i.length?function(e,t,n){var r=3Di.length;while(r--)if(!i[r](e,t,n))retu=
rn!1;return!0}:i[0]}function Z(e,t,n,r,i){for(var o,a=3D[],s=3D0,u=3De.leng=
th,l=3Dnull!=3Dt;s<u;s++)(o=3De[s])&&(n&&!n(o,r,i)||(a.push(o),l&&t.push(s)=
));return a}function ee(d,h,g,v,y,e){return v&&!v[S]&&(v=3Dee(v)),y&&!y[S]&=
&(y=3Dee(y,e)),F(function(e,t,n,r){var i,o,a,s,u=3D[],l=3D[],c=3Dt.length,f=
=3De||function(e,t,n){for(var r=3D0,i=3Dt.length;r<i;r++)I(e,t[r],n);return=
 n}(h||"*",n.nodeType?[n]:n,[]),p=3D!d||!e&&h?f:Z(f,u,d,n,r);if(g?g(p,s=3Dy=
||(e?d:c||v)?[]:t,n,r):s=3Dp,v){i=3DZ(s,l),v(i,[],n,r),o=3Di.length;while(o=
--)(a=3Di[o])&&(s[l[o]]=3D!(p[l[o]]=3Da))}if(e){if(y||d){if(y){i=3D[],o=3Ds=
.length;while(o--)(a=3Ds[o])&&i.push(p[o]=3Da);y(null,s=3D[],i,r)}o=3Ds.len=
gth;while(o--)(a=3Ds[o])&&-1<(i=3Dy?se.call(e,a):u[o])&&(e[i]=3D!(t[i]=3Da)=
)}}else s=3DZ(s=3D=3D=3Dt?s.splice(c,s.length):s),y?y(null,t,s,r):k.apply(t=
,s)})}function te(e){for(var i,t,n,r=3De.length,o=3Db.relative[e[0].type],a=
=3Do||b.relative[" "],s=3Do?1:0,u=3DJ(function(e){return e=3D=3D=3Di},a,!0)=
,l=3DJ(function(e){return-1<se.call(i,e)},a,!0),c=3D[function(e,t,n){var r=
=3D!o&&(n||t!=3Dw)||((i=3Dt).nodeType?u(e,t,n):l(e,t,n));return i=3Dnull,r}=
];s<r;s++)if(t=3Db.relative[e[s].type])c=3D[J(K(c),t)];else{if((t=3Db.filte=
r[e[s].type].apply(null,e[s].matches))[S]){for(n=3D++s;n<r;n++)if(b.relativ=
e[e[n].type])break;return ee(1<s&&K(c),1<s&&Q(e.slice(0,s-1).concat({value:=
" "=3D=3D=3De[s-2].type?"*":""})).replace(ve,"$1"),t,s<n&&te(e.slice(s,n)),=
n<r&&te(e=3De.slice(n)),n<r&&Q(e))}c.push(t)}return K(c)}function ne(e,t){v=
ar n,v,y,m,x,r,i=3D[],o=3D[],a=3Du[e+" "];if(!a){t||(t=3DY(e)),n=3Dt.length=
;while(n--)(a=3Dte(t[n]))[S]?i.push(a):o.push(a);(a=3Du(e,(v=3Do,m=3D0<(y=
=3Di).length,x=3D0<v.length,r=3Dfunction(e,t,n,r,i){var o,a,s,u=3D0,l=3D"0"=
,c=3De&&[],f=3D[],p=3Dw,d=3De||x&&b.find.TAG("*",i),h=3DE+=3Dnull=3D=3Dp?1:=
Math.random()||.1,g=3Dd.length;for(i&&(w=3Dt=3D=3DT||t||i);l!=3D=3Dg&&null!=
=3D(o=3Dd[l]);l++){if(x&&o){a=3D0,t||o.ownerDocument=3D=3DT||(V(o),n=3D!C);=
while(s=3Dv[a++])if(s(o,t||T,n)){k.call(r,o);break}i&&(E=3Dh)}m&&((o=3D!s&&=
o)&&u--,e&&c.push(o))}if(u+=3Dl,m&&l!=3D=3Du){a=3D0;while(s=3Dy[a++])s(c,f,=
t,n);if(e){if(0<u)while(l--)c[l]||f[l]||(f[l]=3Dpe.call(r));f=3DZ(f)}k.appl=
y(r,f),i&&!e&&0<f.length&&1<u+y.length&&ce.uniqueSort(r)}return i&&(E=3Dh,w=
=3Dp),c},m?F(r):r))).selector=3De}return a}function re(e,t,n,r){var i,o,a,s=
,u,l=3D"function"=3D=3Dtypeof e&&e,c=3D!r&&Y(e=3Dl.selector||e);if(n=3Dn||[=
],1=3D=3D=3Dc.length){if(2<(o=3Dc[0]=3Dc[0].slice(0)).length&&"ID"=3D=3D=3D=
(a=3Do[0]).type&&9=3D=3D=3Dt.nodeType&&C&&b.relative[o[1].type]){if(!(t=3D(=
b.find.ID(a.matches[0].replace(O,P),t)||[])[0]))return n;l&&(t=3Dt.parentNo=
de),e=3De.slice(o.shift().value.length)}i=3DD.needsContext.test(e)?0:o.leng=
th;while(i--){if(a=3Do[i],b.relative[s=3Da.type])break;if((u=3Db.find[s])&&=
(r=3Du(a.matches[0].replace(O,P),H.test(o[0].type)&&U(t.parentNode)||t))){i=
f(o.splice(i,1),!(e=3Dr.length&&Q(o)))return k.apply(n,r),n;break}}}return(=
l||ne(e,c))(r,t,!C,n,!t||H.test(e)&&U(t.parentNode)||t),n}G.prototype=3Db.f=
ilters=3Db.pseudos,b.setFilters=3Dnew G,le.sortStable=3DS.split("").sort(l)=
.join("")=3D=3D=3DS,V(),le.sortDetached=3D$(function(e){return 1&e.compareD=
ocumentPosition(T.createElement("fieldset"))}),ce.find=3DI,ce.expr[":"]=3Dc=
e.expr.pseudos,ce.unique=3Dce.uniqueSort,I.compile=3Dne,I.select=3Dre,I.set=
Document=3DV,I.tokenize=3DY,I.escape=3Dce.escapeSelector,I.getText=3Dce.tex=
t,I.isXML=3Dce.isXMLDoc,I.selectors=3Dce.expr,I.support=3Dce.support,I.uniq=
ueSort=3Dce.uniqueSort}();var d=3Dfunction(e,t,n){var r=3D[],i=3Dvoid 0!=3D=
=3Dn;while((e=3De[t])&&9!=3D=3De.nodeType)if(1=3D=3D=3De.nodeType){if(i&&ce=
(e).is(n))break;r.push(e)}return r},h=3Dfunction(e,t){for(var n=3D[];e;e=3D=
e.nextSibling)1=3D=3D=3De.nodeType&&e!=3D=3Dt&&n.push(e);return n},b=3Dce.e=
xpr.match.needsContext,w=3D/^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\=
/?>(?:<\/\1>|)$/i;function T(e,n,r){return v(n)?ce.grep(e,function(e,t){ret=
urn!!n.call(e,t,e)!=3D=3Dr}):n.nodeType?ce.grep(e,function(e){return e=3D=
=3D=3Dn!=3D=3Dr}):"string"!=3Dtypeof n?ce.grep(e,function(e){return-1<se.ca=
ll(n,e)!=3D=3Dr}):ce.filter(n,e,r)}ce.filter=3Dfunction(e,t,n){var r=3Dt[0]=
;return n&&(e=3D":not("+e+")"),1=3D=3D=3Dt.length&&1=3D=3D=3Dr.nodeType?ce.=
find.matchesSelector(r,e)?[r]:[]:ce.find.matches(e,ce.grep(t,function(e){re=
turn 1=3D=3D=3De.nodeType}))},ce.fn.extend({find:function(e){var t,n,r=3Dth=
is.length,i=3Dthis;if("string"!=3Dtypeof e)return this.pushStack(ce(e).filt=
er(function(){for(t=3D0;t<r;t++)if(ce.contains(i[t],this))return!0}));for(n=
=3Dthis.pushStack([]),t=3D0;t<r;t++)ce.find(e,i[t],n);return 1<r?ce.uniqueS=
ort(n):n},filter:function(e){return this.pushStack(T(this,e||[],!1))},not:f=
unction(e){return this.pushStack(T(this,e||[],!0))},is:function(e){return!!=
T(this,"string"=3D=3Dtypeof e&&b.test(e)?ce(e):e||[],!1).length}});var k,S=
=3D/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;(ce.fn.init=3Dfunction(e,t,n){var =
r,i;if(!e)return this;if(n=3Dn||k,"string"=3D=3Dtypeof e){if(!(r=3D"<"=3D=
=3D=3De[0]&&">"=3D=3D=3De[e.length-1]&&3<=3De.length?[null,e,null]:S.exec(e=
))||!r[1]&&t)return!t||t.jquery?(t||n).find(e):this.constructor(t).find(e);=
if(r[1]){if(t=3Dt instanceof ce?t[0]:t,ce.merge(this,ce.parseHTML(r[1],t&&t=
.nodeType?t.ownerDocument||t:C,!0)),w.test(r[1])&&ce.isPlainObject(t))for(r=
 in t)v(this[r])?this[r](t[r]):this.attr(r,t[r]);return this}return(i=3DC.g=
etElementById(r[2]))&&(this[0]=3Di,this.length=3D1),this}return e.nodeType?=
(this[0]=3De,this.length=3D1,this):v(e)?void 0!=3D=3Dn.ready?n.ready(e):e(c=
e):ce.makeArray(e,this)}).prototype=3Dce.fn,k=3Dce(C);var E=3D/^(?:parents|=
prev(?:Until|All))/,j=3D{children:!0,contents:!0,next:!0,prev:!0};function =
A(e,t){while((e=3De[t])&&1!=3D=3De.nodeType);return e}ce.fn.extend({has:fun=
ction(e){var t=3Dce(e,this),n=3Dt.length;return this.filter(function(){for(=
var e=3D0;e<n;e++)if(ce.contains(this,t[e]))return!0})},closest:function(e,=
t){var n,r=3D0,i=3Dthis.length,o=3D[],a=3D"string"!=3Dtypeof e&&ce(e);if(!b=
.test(e))for(;r<i;r++)for(n=3Dthis[r];n&&n!=3D=3Dt;n=3Dn.parentNode)if(n.no=
deType<11&&(a?-1<a.index(n):1=3D=3D=3Dn.nodeType&&ce.find.matchesSelector(n=
,e))){o.push(n);break}return this.pushStack(1<o.length?ce.uniqueSort(o):o)}=
,index:function(e){return e?"string"=3D=3Dtypeof e?se.call(ce(e),this[0]):s=
e.call(this,e.jquery?e[0]:e):this[0]&&this[0].parentNode?this.first().prevA=
ll().length:-1},add:function(e,t){return this.pushStack(ce.uniqueSort(ce.me=
rge(this.get(),ce(e,t))))},addBack:function(e){return this.add(null=3D=3De?=
this.prevObject:this.prevObject.filter(e))}}),ce.each({parent:function(e){v=
ar t=3De.parentNode;return t&&11!=3D=3Dt.nodeType?t:null},parents:function(=
e){return d(e,"parentNode")},parentsUntil:function(e,t,n){return d(e,"paren=
tNode",n)},next:function(e){return A(e,"nextSibling")},prev:function(e){ret=
urn A(e,"previousSibling")},nextAll:function(e){return d(e,"nextSibling")},=
prevAll:function(e){return d(e,"previousSibling")},nextUntil:function(e,t,n=
){return d(e,"nextSibling",n)},prevUntil:function(e,t,n){return d(e,"previo=
usSibling",n)},siblings:function(e){return h((e.parentNode||{}).firstChild,=
e)},children:function(e){return h(e.firstChild)},contents:function(e){retur=
n null!=3De.contentDocument&&r(e.contentDocument)?e.contentDocument:(fe(e,"=
template")&&(e=3De.content||e),ce.merge([],e.childNodes))}},function(r,i){c=
e.fn[r]=3Dfunction(e,t){var n=3Dce.map(this,i,e);return"Until"!=3D=3Dr.slic=
e(-5)&&(t=3De),t&&"string"=3D=3Dtypeof t&&(n=3Dce.filter(t,n)),1<this.lengt=
h&&(j[r]||ce.uniqueSort(n),E.test(r)&&n.reverse()),this.pushStack(n)}});var=
 D=3D/[^\x20\t\r\n\f]+/g;function N(e){return e}function q(e){throw e}funct=
ion L(e,t,n,r){var i;try{e&&v(i=3De.promise)?i.call(e).done(t).fail(n):e&&v=
(i=3De.then)?i.call(e,t,n):t.apply(void 0,[e].slice(r))}catch(e){n.apply(vo=
id 0,[e])}}ce.Callbacks=3Dfunction(r){var e,n;r=3D"string"=3D=3Dtypeof r?(e=
=3Dr,n=3D{},ce.each(e.match(D)||[],function(e,t){n[t]=3D!0}),n):ce.extend({=
},r);var i,t,o,a,s=3D[],u=3D[],l=3D-1,c=3Dfunction(){for(a=3Da||r.once,o=3D=
i=3D!0;u.length;l=3D-1){t=3Du.shift();while(++l<s.length)!1=3D=3D=3Ds[l].ap=
ply(t[0],t[1])&&r.stopOnFalse&&(l=3Ds.length,t=3D!1)}r.memory||(t=3D!1),i=
=3D!1,a&&(s=3Dt?[]:"")},f=3D{add:function(){return s&&(t&&!i&&(l=3Ds.length=
-1,u.push(t)),function n(e){ce.each(e,function(e,t){v(t)?r.unique&&f.has(t)=
||s.push(t):t&&t.length&&"string"!=3D=3Dx(t)&&n(t)})}(arguments),t&&!i&&c()=
),this},remove:function(){return ce.each(arguments,function(e,t){var n;whil=
e(-1<(n=3Dce.inArray(t,s,n)))s.splice(n,1),n<=3Dl&&l--}),this},has:function=
(e){return e?-1<ce.inArray(e,s):0<s.length},empty:function(){return s&&(s=
=3D[]),this},disable:function(){return a=3Du=3D[],s=3Dt=3D"",this},disabled=
:function(){return!s},lock:function(){return a=3Du=3D[],t||i||(s=3Dt=3D""),=
this},locked:function(){return!!a},fireWith:function(e,t){return a||(t=3D[e=
,(t=3Dt||[]).slice?t.slice():t],u.push(t),i||c()),this},fire:function(){ret=
urn f.fireWith(this,arguments),this},fired:function(){return!!o}};return f}=
,ce.extend({Deferred:function(e){var o=3D[["notify","progress",ce.Callbacks=
("memory"),ce.Callbacks("memory"),2],["resolve","done",ce.Callbacks("once m=
emory"),ce.Callbacks("once memory"),0,"resolved"],["reject","fail",ce.Callb=
acks("once memory"),ce.Callbacks("once memory"),1,"rejected"]],i=3D"pending=
",a=3D{state:function(){return i},always:function(){return s.done(arguments=
).fail(arguments),this},"catch":function(e){return a.then(null,e)},pipe:fun=
ction(){var i=3Darguments;return ce.Deferred(function(r){ce.each(o,function=
(e,t){var n=3Dv(i[t[4]])&&i[t[4]];s[t[1]](function(){var e=3Dn&&n.apply(thi=
s,arguments);e&&v(e.promise)?e.promise().progress(r.notify).done(r.resolve)=
.fail(r.reject):r[t[0]+"With"](this,n?[e]:arguments)})}),i=3Dnull}).promise=
()},then:function(t,n,r){var u=3D0;function l(i,o,a,s){return function(){va=
r n=3Dthis,r=3Darguments,e=3Dfunction(){var e,t;if(!(i<u)){if((e=3Da.apply(=
n,r))=3D=3D=3Do.promise())throw new TypeError("Thenable self-resolution");t=
=3De&&("object"=3D=3Dtypeof e||"function"=3D=3Dtypeof e)&&e.then,v(t)?s?t.c=
all(e,l(u,o,N,s),l(u,o,q,s)):(u++,t.call(e,l(u,o,N,s),l(u,o,q,s),l(u,o,N,o.=
notifyWith))):(a!=3D=3DN&&(n=3Dvoid 0,r=3D[e]),(s||o.resolveWith)(n,r))}},t=
=3Ds?e:function(){try{e()}catch(e){ce.Deferred.exceptionHook&&ce.Deferred.e=
xceptionHook(e,t.error),u<=3Di+1&&(a!=3D=3Dq&&(n=3Dvoid 0,r=3D[e]),o.reject=
With(n,r))}};i?t():(ce.Deferred.getErrorHook?t.error=3Dce.Deferred.getError=
Hook():ce.Deferred.getStackHook&&(t.error=3Dce.Deferred.getStackHook()),ie.=
setTimeout(t))}}return ce.Deferred(function(e){o[0][3].add(l(0,e,v(r)?r:N,e=
.notifyWith)),o[1][3].add(l(0,e,v(t)?t:N)),o[2][3].add(l(0,e,v(n)?n:q))}).p=
romise()},promise:function(e){return null!=3De?ce.extend(e,a):a}},s=3D{};re=
turn ce.each(o,function(e,t){var n=3Dt[2],r=3Dt[5];a[t[1]]=3Dn.add,r&&n.add=
(function(){i=3Dr},o[3-e][2].disable,o[3-e][3].disable,o[0][2].lock,o[0][3]=
.lock),n.add(t[3].fire),s[t[0]]=3Dfunction(){return s[t[0]+"With"](this=3D=
=3D=3Ds?void 0:this,arguments),this},s[t[0]+"With"]=3Dn.fireWith}),a.promis=
e(s),e&&e.call(s,s),s},when:function(e){var n=3Darguments.length,t=3Dn,r=3D=
Array(t),i=3Dae.call(arguments),o=3Dce.Deferred(),a=3Dfunction(t){return fu=
nction(e){r[t]=3Dthis,i[t]=3D1<arguments.length?ae.call(arguments):e,--n||o=
.resolveWith(r,i)}};if(n<=3D1&&(L(e,o.done(a(t)).resolve,o.reject,!n),"pend=
ing"=3D=3D=3Do.state()||v(i[t]&&i[t].then)))return o.then();while(t--)L(i[t=
],a(t),o.reject);return o.promise()}});var H=3D/^(Eval|Internal|Range|Refer=
ence|Syntax|Type|URI)Error$/;ce.Deferred.exceptionHook=3Dfunction(e,t){ie.c=
onsole&&ie.console.warn&&e&&H.test(e.name)&&ie.console.warn("jQuery.Deferre=
d exception: "+e.message,e.stack,t)},ce.readyException=3Dfunction(e){ie.set=
Timeout(function(){throw e})};var O=3Dce.Deferred();function P(){C.removeEv=
entListener("DOMContentLoaded",P),ie.removeEventListener("load",P),ce.ready=
()}ce.fn.ready=3Dfunction(e){return O.then(e)["catch"](function(e){ce.ready=
Exception(e)}),this},ce.extend({isReady:!1,readyWait:1,ready:function(e){(!=
0=3D=3D=3De?--ce.readyWait:ce.isReady)||(ce.isReady=3D!0)!=3D=3De&&0<--ce.r=
eadyWait||O.resolveWith(C,[ce])}}),ce.ready.then=3DO.then,"complete"=3D=3D=
=3DC.readyState||"loading"!=3D=3DC.readyState&&!C.documentElement.doScroll?=
ie.setTimeout(ce.ready):(C.addEventListener("DOMContentLoaded",P),ie.addEve=
ntListener("load",P));var M=3Dfunction(e,t,n,r,i,o,a){var s=3D0,u=3De.lengt=
h,l=3Dnull=3D=3Dn;if("object"=3D=3D=3Dx(n))for(s in i=3D!0,n)M(e,t,s,n[s],!=
0,o,a);else if(void 0!=3D=3Dr&&(i=3D!0,v(r)||(a=3D!0),l&&(a?(t.call(e,r),t=
=3Dnull):(l=3Dt,t=3Dfunction(e,t,n){return l.call(ce(e),n)})),t))for(;s<u;s=
++)t(e[s],n,a?r:r.call(e[s],s,t(e[s],n)));return i?e:l?t.call(e):u?t(e[0],n=
):o},R=3D/^-ms-/,I=3D/-([a-z])/g;function W(e,t){return t.toUpperCase()}fun=
ction F(e){return e.replace(R,"ms-").replace(I,W)}var $=3Dfunction(e){retur=
n 1=3D=3D=3De.nodeType||9=3D=3D=3De.nodeType||!+e.nodeType};function B(){th=
is.expando=3Dce.expando+B.uid++}B.uid=3D1,B.prototype=3D{cache:function(e){=
var t=3De[this.expando];return t||(t=3D{},$(e)&&(e.nodeType?e[this.expando]=
=3Dt:Object.defineProperty(e,this.expando,{value:t,configurable:!0}))),t},s=
et:function(e,t,n){var r,i=3Dthis.cache(e);if("string"=3D=3Dtypeof t)i[F(t)=
]=3Dn;else for(r in t)i[F(r)]=3Dt[r];return i},get:function(e,t){return voi=
d 0=3D=3D=3Dt?this.cache(e):e[this.expando]&&e[this.expando][F(t)]},access:=
function(e,t,n){return void 0=3D=3D=3Dt||t&&"string"=3D=3Dtypeof t&&void 0=
=3D=3D=3Dn?this.get(e,t):(this.set(e,t,n),void 0!=3D=3Dn?n:t)},remove:funct=
ion(e,t){var n,r=3De[this.expando];if(void 0!=3D=3Dr){if(void 0!=3D=3Dt){n=
=3D(t=3DArray.isArray(t)?t.map(F):(t=3DF(t))in r?[t]:t.match(D)||[]).length=
;while(n--)delete r[t[n]]}(void 0=3D=3D=3Dt||ce.isEmptyObject(r))&&(e.nodeT=
ype?e[this.expando]=3Dvoid 0:delete e[this.expando])}},hasData:function(e){=
var t=3De[this.expando];return void 0!=3D=3Dt&&!ce.isEmptyObject(t)}};var _=
=3Dnew B,z=3Dnew B,X=3D/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,U=3D/[A-Z]/g;functio=
n V(e,t,n){var r,i;if(void 0=3D=3D=3Dn&&1=3D=3D=3De.nodeType)if(r=3D"data-"=
+t.replace(U,"-$&").toLowerCase(),"string"=3D=3Dtypeof(n=3De.getAttribute(r=
))){try{n=3D"true"=3D=3D=3D(i=3Dn)||"false"!=3D=3Di&&("null"=3D=3D=3Di?null=
:i=3D=3D=3D+i+""?+i:X.test(i)?JSON.parse(i):i)}catch(e){}z.set(e,t,n)}else =
n=3Dvoid 0;return n}ce.extend({hasData:function(e){return z.hasData(e)||_.h=
asData(e)},data:function(e,t,n){return z.access(e,t,n)},removeData:function=
(e,t){z.remove(e,t)},_data:function(e,t,n){return _.access(e,t,n)},_removeD=
ata:function(e,t){_.remove(e,t)}}),ce.fn.extend({data:function(n,e){var t,r=
,i,o=3Dthis[0],a=3Do&&o.attributes;if(void 0=3D=3D=3Dn){if(this.length&&(i=
=3Dz.get(o),1=3D=3D=3Do.nodeType&&!_.get(o,"hasDataAttrs"))){t=3Da.length;w=
hile(t--)a[t]&&0=3D=3D=3D(r=3Da[t].name).indexOf("data-")&&(r=3DF(r.slice(5=
)),V(o,r,i[r]));_.set(o,"hasDataAttrs",!0)}return i}return"object"=3D=3Dtyp=
eof n?this.each(function(){z.set(this,n)}):M(this,function(e){var t;if(o&&v=
oid 0=3D=3D=3De)return void 0!=3D=3D(t=3Dz.get(o,n))?t:void 0!=3D=3D(t=3DV(=
o,n))?t:void 0;this.each(function(){z.set(this,n,e)})},null,e,1<arguments.l=
ength,null,!0)},removeData:function(e){return this.each(function(){z.remove=
(this,e)})}}),ce.extend({queue:function(e,t,n){var r;if(e)return t=3D(t||"f=
x")+"queue",r=3D_.get(e,t),n&&(!r||Array.isArray(n)?r=3D_.access(e,t,ce.mak=
eArray(n)):r.push(n)),r||[]},dequeue:function(e,t){t=3Dt||"fx";var n=3Dce.q=
ueue(e,t),r=3Dn.length,i=3Dn.shift(),o=3Dce._queueHooks(e,t);"inprogress"=
=3D=3D=3Di&&(i=3Dn.shift(),r--),i&&("fx"=3D=3D=3Dt&&n.unshift("inprogress")=
,delete o.stop,i.call(e,function(){ce.dequeue(e,t)},o)),!r&&o&&o.empty.fire=
()},_queueHooks:function(e,t){var n=3Dt+"queueHooks";return _.get(e,n)||_.a=
ccess(e,n,{empty:ce.Callbacks("once memory").add(function(){_.remove(e,[t+"=
queue",n])})})}}),ce.fn.extend({queue:function(t,n){var e=3D2;return"string=
"!=3Dtypeof t&&(n=3Dt,t=3D"fx",e--),arguments.length<e?ce.queue(this[0],t):=
void 0=3D=3D=3Dn?this:this.each(function(){var e=3Dce.queue(this,t,n);ce._q=
ueueHooks(this,t),"fx"=3D=3D=3Dt&&"inprogress"!=3D=3De[0]&&ce.dequeue(this,=
t)})},dequeue:function(e){return this.each(function(){ce.dequeue(this,e)})}=
,clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,t=
){var n,r=3D1,i=3Dce.Deferred(),o=3Dthis,a=3Dthis.length,s=3Dfunction(){--r=
||i.resolveWith(o,[o])};"string"!=3Dtypeof e&&(t=3De,e=3Dvoid 0),e=3De||"fx=
";while(a--)(n=3D_.get(o[a],e+"queueHooks"))&&n.empty&&(r++,n.empty.add(s))=
;return s(),i.promise(t)}});var G=3D/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.s=
ource,Y=3Dnew RegExp("^(?:([+-])=3D|)("+G+")([a-z%]*)$","i"),Q=3D["Top","Ri=
ght","Bottom","Left"],J=3DC.documentElement,K=3Dfunction(e){return ce.conta=
ins(e.ownerDocument,e)},Z=3D{composed:!0};J.getRootNode&&(K=3Dfunction(e){r=
eturn ce.contains(e.ownerDocument,e)||e.getRootNode(Z)=3D=3D=3De.ownerDocum=
ent});var ee=3Dfunction(e,t){return"none"=3D=3D=3D(e=3Dt||e).style.display|=
|""=3D=3D=3De.style.display&&K(e)&&"none"=3D=3D=3Dce.css(e,"display")};func=
tion te(e,t,n,r){var i,o,a=3D20,s=3Dr?function(){return r.cur()}:function()=
{return ce.css(e,t,"")},u=3Ds(),l=3Dn&&n[3]||(ce.cssNumber[t]?"":"px"),c=3D=
e.nodeType&&(ce.cssNumber[t]||"px"!=3D=3Dl&&+u)&&Y.exec(ce.css(e,t));if(c&&=
c[3]!=3D=3Dl){u/=3D2,l=3Dl||c[3],c=3D+u||1;while(a--)ce.style(e,t,c+l),(1-o=
)*(1-(o=3Ds()/u||.5))<=3D0&&(a=3D0),c/=3Do;c*=3D2,ce.style(e,t,c+l),n=3Dn||=
[]}return n&&(c=3D+c||+u||0,i=3Dn[1]?c+(n[1]+1)*n[2]:+n[2],r&&(r.unit=3Dl,r=
.start=3Dc,r.end=3Di)),i}var ne=3D{};function re(e,t){for(var n,r,i,o,a,s,u=
,l=3D[],c=3D0,f=3De.length;c<f;c++)(r=3De[c]).style&&(n=3Dr.style.display,t=
?("none"=3D=3D=3Dn&&(l[c]=3D_.get(r,"display")||null,l[c]||(r.style.display=
=3D"")),""=3D=3D=3Dr.style.display&&ee(r)&&(l[c]=3D(u=3Da=3Do=3Dvoid 0,a=3D=
(i=3Dr).ownerDocument,s=3Di.nodeName,(u=3Dne[s])||(o=3Da.body.appendChild(a=
.createElement(s)),u=3Dce.css(o,"display"),o.parentNode.removeChild(o),"non=
e"=3D=3D=3Du&&(u=3D"block"),ne[s]=3Du)))):"none"!=3D=3Dn&&(l[c]=3D"none",_.=
set(r,"display",n)));for(c=3D0;c<f;c++)null!=3Dl[c]&&(e[c].style.display=3D=
l[c]);return e}ce.fn.extend({show:function(){return re(this,!0)},hide:funct=
ion(){return re(this)},toggle:function(e){return"boolean"=3D=3Dtypeof e?e?t=
his.show():this.hide():this.each(function(){ee(this)?ce(this).show():ce(thi=
s).hide()})}});var xe,be,we=3D/^(?:checkbox|radio)$/i,Te=3D/<([a-z][^\/\0>\=
x20\t\r\n\f]*)/i,Ce=3D/^$|^module$|\/(?:java|ecma)script/i;xe=3DC.createDoc=
umentFragment().appendChild(C.createElement("div")),(be=3DC.createElement("=
input")).setAttribute("type","radio"),be.setAttribute("checked","checked"),=
be.setAttribute("name","t"),xe.appendChild(be),le.checkClone=3Dxe.cloneNode=
(!0).cloneNode(!0).lastChild.checked,xe.innerHTML=3D"<textarea>x</textarea>=
",le.noCloneChecked=3D!!xe.cloneNode(!0).lastChild.defaultValue,xe.innerHTM=
L=3D"<option></option>",le.option=3D!!xe.lastChild;var ke=3D{thead:[1,"<tab=
le>","</table>"],col:[2,"<table><colgroup>","</colgroup></table>"],tr:[2,"<=
table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody=
></table>"],_default:[0,"",""]};function Se(e,t){var n;return n=3D"undefine=
d"!=3Dtypeof e.getElementsByTagName?e.getElementsByTagName(t||"*"):"undefin=
ed"!=3Dtypeof e.querySelectorAll?e.querySelectorAll(t||"*"):[],void 0=3D=3D=
=3Dt||t&&fe(e,t)?ce.merge([e],n):n}function Ee(e,t){for(var n=3D0,r=3De.len=
gth;n<r;n++)_.set(e[n],"globalEval",!t||_.get(t[n],"globalEval"))}ke.tbody=
=3Dke.tfoot=3Dke.colgroup=3Dke.caption=3Dke.thead,ke.th=3Dke.td,le.option||=
(ke.optgroup=3Dke.option=3D[1,"<select multiple=3D'multiple'>","</select>"]=
);var je=3D/<|&#?\w+;/;function Ae(e,t,n,r,i){for(var o,a,s,u,l,c,f=3Dt.cre=
ateDocumentFragment(),p=3D[],d=3D0,h=3De.length;d<h;d++)if((o=3De[d])||0=3D=
=3D=3Do)if("object"=3D=3D=3Dx(o))ce.merge(p,o.nodeType?[o]:o);else if(je.te=
st(o)){a=3Da||f.appendChild(t.createElement("div")),s=3D(Te.exec(o)||["",""=
])[1].toLowerCase(),u=3Dke[s]||ke._default,a.innerHTML=3Du[1]+ce.htmlPrefil=
ter(o)+u[2],c=3Du[0];while(c--)a=3Da.lastChild;ce.merge(p,a.childNodes),(a=
=3Df.firstChild).textContent=3D""}else p.push(t.createTextNode(o));f.textCo=
ntent=3D"",d=3D0;while(o=3Dp[d++])if(r&&-1<ce.inArray(o,r))i&&i.push(o);els=
e if(l=3DK(o),a=3DSe(f.appendChild(o),"script"),l&&Ee(a),n){c=3D0;while(o=
=3Da[c++])Ce.test(o.type||"")&&n.push(o)}return f}var De=3D/^([^.]*)(?:\.(.=
+)|)/;function Ne(){return!0}function qe(){return!1}function Le(e,t,n,r,i,o=
){var a,s;if("object"=3D=3Dtypeof t){for(s in"string"!=3Dtypeof n&&(r=3Dr||=
n,n=3Dvoid 0),t)Le(e,s,n,r,t[s],o);return e}if(null=3D=3Dr&&null=3D=3Di?(i=
=3Dn,r=3Dn=3Dvoid 0):null=3D=3Di&&("string"=3D=3Dtypeof n?(i=3Dr,r=3Dvoid 0=
):(i=3Dr,r=3Dn,n=3Dvoid 0)),!1=3D=3D=3Di)i=3Dqe;else if(!i)return e;return =
1=3D=3D=3Do&&(a=3Di,(i=3Dfunction(e){return ce().off(e),a.apply(this,argume=
nts)}).guid=3Da.guid||(a.guid=3Dce.guid++)),e.each(function(){ce.event.add(=
this,t,i,r,n)})}function He(e,r,t){t?(_.set(e,r,!1),ce.event.add(e,r,{names=
pace:!1,handler:function(e){var t,n=3D_.get(this,r);if(1&e.isTrigger&&this[=
r]){if(n)(ce.event.special[r]||{}).delegateType&&e.stopPropagation();else i=
f(n=3Dae.call(arguments),_.set(this,r,n),this[r](),t=3D_.get(this,r),_.set(=
this,r,!1),n!=3D=3Dt)return e.stopImmediatePropagation(),e.preventDefault()=
,t}else n&&(_.set(this,r,ce.event.trigger(n[0],n.slice(1),this)),e.stopProp=
agation(),e.isImmediatePropagationStopped=3DNe)}})):void 0=3D=3D=3D_.get(e,=
r)&&ce.event.add(e,r,Ne)}ce.event=3D{global:{},add:function(t,e,n,r,i){var =
o,a,s,u,l,c,f,p,d,h,g,v=3D_.get(t);if($(t)){n.handler&&(n=3D(o=3Dn).handler=
,i=3Do.selector),i&&ce.find.matchesSelector(J,i),n.guid||(n.guid=3Dce.guid+=
+),(u=3Dv.events)||(u=3Dv.events=3DObject.create(null)),(a=3Dv.handle)||(a=
=3Dv.handle=3Dfunction(e){return"undefined"!=3Dtypeof ce&&ce.event.triggere=
d!=3D=3De.type?ce.event.dispatch.apply(t,arguments):void 0}),l=3D(e=3D(e||"=
").match(D)||[""]).length;while(l--)d=3Dg=3D(s=3DDe.exec(e[l])||[])[1],h=3D=
(s[2]||"").split(".").sort(),d&&(f=3Dce.event.special[d]||{},d=3D(i?f.deleg=
ateType:f.bindType)||d,f=3Dce.event.special[d]||{},c=3Dce.extend({type:d,or=
igType:g,data:r,handler:n,guid:n.guid,selector:i,needsContext:i&&ce.expr.ma=
tch.needsContext.test(i),namespace:h.join(".")},o),(p=3Du[d])||((p=3Du[d]=
=3D[]).delegateCount=3D0,f.setup&&!1!=3D=3Df.setup.call(t,r,h,a)||t.addEven=
tListener&&t.addEventListener(d,a)),f.add&&(f.add.call(t,c),c.handler.guid|=
|(c.handler.guid=3Dn.guid)),i?p.splice(p.delegateCount++,0,c):p.push(c),ce.=
event.global[d]=3D!0)}},remove:function(e,t,n,r,i){var o,a,s,u,l,c,f,p,d,h,=
g,v=3D_.hasData(e)&&_.get(e);if(v&&(u=3Dv.events)){l=3D(t=3D(t||"").match(D=
)||[""]).length;while(l--)if(d=3Dg=3D(s=3DDe.exec(t[l])||[])[1],h=3D(s[2]||=
"").split(".").sort(),d){f=3Dce.event.special[d]||{},p=3Du[d=3D(r?f.delegat=
eType:f.bindType)||d]||[],s=3Ds[2]&&new RegExp("(^|\\.)"+h.join("\\.(?:.*\\=
.|)")+"(\\.|$)"),a=3Do=3Dp.length;while(o--)c=3Dp[o],!i&&g!=3D=3Dc.origType=
||n&&n.guid!=3D=3Dc.guid||s&&!s.test(c.namespace)||r&&r!=3D=3Dc.selector&&(=
"**"!=3D=3Dr||!c.selector)||(p.splice(o,1),c.selector&&p.delegateCount--,f.=
remove&&f.remove.call(e,c));a&&!p.length&&(f.teardown&&!1!=3D=3Df.teardown.=
call(e,h,v.handle)||ce.removeEvent(e,d,v.handle),delete u[d])}else for(d in=
 u)ce.event.remove(e,d+t[l],n,r,!0);ce.isEmptyObject(u)&&_.remove(e,"handle=
 events")}},dispatch:function(e){var t,n,r,i,o,a,s=3Dnew Array(arguments.le=
ngth),u=3Dce.event.fix(e),l=3D(_.get(this,"events")||Object.create(null))[u=
.type]||[],c=3Dce.event.special[u.type]||{};for(s[0]=3Du,t=3D1;t<arguments.=
length;t++)s[t]=3Darguments[t];if(u.delegateTarget=3Dthis,!c.preDispatch||!=
1!=3D=3Dc.preDispatch.call(this,u)){a=3Dce.event.handlers.call(this,u,l),t=
=3D0;while((i=3Da[t++])&&!u.isPropagationStopped()){u.currentTarget=3Di.ele=
m,n=3D0;while((o=3Di.handlers[n++])&&!u.isImmediatePropagationStopped())u.r=
namespace&&!1!=3D=3Do.namespace&&!u.rnamespace.test(o.namespace)||(u.handle=
Obj=3Do,u.data=3Do.data,void 0!=3D=3D(r=3D((ce.event.special[o.origType]||{=
}).handle||o.handler).apply(i.elem,s))&&!1=3D=3D=3D(u.result=3Dr)&&(u.preve=
ntDefault(),u.stopPropagation()))}return c.postDispatch&&c.postDispatch.cal=
l(this,u),u.result}},handlers:function(e,t){var n,r,i,o,a,s=3D[],u=3Dt.dele=
gateCount,l=3De.target;if(u&&l.nodeType&&!("click"=3D=3D=3De.type&&1<=3De.b=
utton))for(;l!=3D=3Dthis;l=3Dl.parentNode||this)if(1=3D=3D=3Dl.nodeType&&("=
click"!=3D=3De.type||!0!=3D=3Dl.disabled)){for(o=3D[],a=3D{},n=3D0;n<u;n++)=
void 0=3D=3D=3Da[i=3D(r=3Dt[n]).selector+" "]&&(a[i]=3Dr.needsContext?-1<ce=
(i,this).index(l):ce.find(i,this,null,[l]).length),a[i]&&o.push(r);o.length=
&&s.push({elem:l,handlers:o})}return l=3Dthis,u<t.length&&s.push({elem:l,ha=
ndlers:t.slice(u)}),s},addProp:function(t,e){Object.defineProperty(ce.Event=
.prototype,t,{enumerable:!0,configurable:!0,get:v(e)?function(){if(this.ori=
ginalEvent)return e(this.originalEvent)}:function(){if(this.originalEvent)r=
eturn this.originalEvent[t]},set:function(e){Object.defineProperty(this,t,{=
enumerable:!0,configurable:!0,writable:!0,value:e})}})},fix:function(e){ret=
urn e[ce.expando]?e:new ce.Event(e)},special:{load:{noBubble:!0},click:{set=
up:function(e){var t=3Dthis||e;return we.test(t.type)&&t.click&&fe(t,"input=
")&&He(t,"click",!0),!1},trigger:function(e){var t=3Dthis||e;return we.test=
(t.type)&&t.click&&fe(t,"input")&&He(t,"click"),!0},_default:function(e){va=
r t=3De.target;return we.test(t.type)&&t.click&&fe(t,"input")&&_.get(t,"cli=
ck")||fe(t,"a")}},beforeunload:{postDispatch:function(e){void 0!=3D=3De.res=
ult&&e.originalEvent&&(e.originalEvent.returnValue=3De.result)}}}},ce.remov=
eEvent=3Dfunction(e,t,n){e.removeEventListener&&e.removeEventListener(t,n)}=
,ce.Event=3Dfunction(e,t){if(!(this instanceof ce.Event))return new ce.Even=
t(e,t);e&&e.type?(this.originalEvent=3De,this.type=3De.type,this.isDefaultP=
revented=3De.defaultPrevented||void 0=3D=3D=3De.defaultPrevented&&!1=3D=3D=
=3De.returnValue?Ne:qe,this.target=3De.target&&3=3D=3D=3De.target.nodeType?=
e.target.parentNode:e.target,this.currentTarget=3De.currentTarget,this.rela=
tedTarget=3De.relatedTarget):this.type=3De,t&&ce.extend(this,t),this.timeSt=
amp=3De&&e.timeStamp||Date.now(),this[ce.expando]=3D!0},ce.Event.prototype=
=3D{constructor:ce.Event,isDefaultPrevented:qe,isPropagationStopped:qe,isIm=
mediatePropagationStopped:qe,isSimulated:!1,preventDefault:function(){var e=
=3Dthis.originalEvent;this.isDefaultPrevented=3DNe,e&&!this.isSimulated&&e.=
preventDefault()},stopPropagation:function(){var e=3Dthis.originalEvent;thi=
s.isPropagationStopped=3DNe,e&&!this.isSimulated&&e.stopPropagation()},stop=
ImmediatePropagation:function(){var e=3Dthis.originalEvent;this.isImmediate=
PropagationStopped=3DNe,e&&!this.isSimulated&&e.stopImmediatePropagation(),=
this.stopPropagation()}},ce.each({altKey:!0,bubbles:!0,cancelable:!0,change=
dTouches:!0,ctrlKey:!0,detail:!0,eventPhase:!0,metaKey:!0,pageX:!0,pageY:!0=
,shiftKey:!0,view:!0,"char":!0,code:!0,charCode:!0,key:!0,keyCode:!0,button=
:!0,buttons:!0,clientX:!0,clientY:!0,offsetX:!0,offsetY:!0,pointerId:!0,poi=
nterType:!0,screenX:!0,screenY:!0,targetTouches:!0,toElement:!0,touches:!0,=
which:!0},ce.event.addProp),ce.each({focus:"focusin",blur:"focusout"},funct=
ion(r,i){function o(e){if(C.documentMode){var t=3D_.get(this,"handle"),n=3D=
ce.event.fix(e);n.type=3D"focusin"=3D=3D=3De.type?"focus":"blur",n.isSimula=
ted=3D!0,t(e),n.target=3D=3D=3Dn.currentTarget&&t(n)}else ce.event.simulate=
(i,e.target,ce.event.fix(e))}ce.event.special[r]=3D{setup:function(){var e;=
if(He(this,r,!0),!C.documentMode)return!1;(e=3D_.get(this,i))||this.addEven=
tListener(i,o),_.set(this,i,(e||0)+1)},trigger:function(){return He(this,r)=
,!0},teardown:function(){var e;if(!C.documentMode)return!1;(e=3D_.get(this,=
i)-1)?_.set(this,i,e):(this.removeEventListener(i,o),_.remove(this,i))},_de=
fault:function(e){return _.get(e.target,r)},delegateType:i},ce.event.specia=
l[i]=3D{setup:function(){var e=3Dthis.ownerDocument||this.document||this,t=
=3DC.documentMode?this:e,n=3D_.get(t,i);n||(C.documentMode?this.addEventLis=
tener(i,o):e.addEventListener(r,o,!0)),_.set(t,i,(n||0)+1)},teardown:functi=
on(){var e=3Dthis.ownerDocument||this.document||this,t=3DC.documentMode?thi=
s:e,n=3D_.get(t,i)-1;n?_.set(t,i,n):(C.documentMode?this.removeEventListene=
r(i,o):e.removeEventListener(r,o,!0),_.remove(t,i))}}}),ce.each({mouseenter=
:"mouseover",mouseleave:"mouseout",pointerenter:"pointerover",pointerleave:=
"pointerout"},function(e,i){ce.event.special[e]=3D{delegateType:i,bindType:=
i,handle:function(e){var t,n=3De.relatedTarget,r=3De.handleObj;return n&&(n=
=3D=3D=3Dthis||ce.contains(this,n))||(e.type=3Dr.origType,t=3Dr.handler.app=
ly(this,arguments),e.type=3Di),t}}}),ce.fn.extend({on:function(e,t,n,r){ret=
urn Le(this,e,t,n,r)},one:function(e,t,n,r){return Le(this,e,t,n,r,1)},off:=
function(e,t,n){var r,i;if(e&&e.preventDefault&&e.handleObj)return r=3De.ha=
ndleObj,ce(e.delegateTarget).off(r.namespace?r.origType+"."+r.namespace:r.o=
rigType,r.selector,r.handler),this;if("object"=3D=3Dtypeof e){for(i in e)th=
is.off(i,t,e[i]);return this}return!1!=3D=3Dt&&"function"!=3Dtypeof t||(n=
=3Dt,t=3Dvoid 0),!1=3D=3D=3Dn&&(n=3Dqe),this.each(function(){ce.event.remov=
e(this,e,n,t)})}});var Oe=3D/<script|<style|<link/i,Pe=3D/checked\s*(?:[^=
=3D]|=3D\s*.checked.)/i,Me=3D/^\s*<!\[CDATA\[|\]\]>\s*$/g;function Re(e,t){=
return fe(e,"table")&&fe(11!=3D=3Dt.nodeType?t:t.firstChild,"tr")&&ce(e).ch=
ildren("tbody")[0]||e}function Ie(e){return e.type=3D(null!=3D=3De.getAttri=
bute("type"))+"/"+e.type,e}function We(e){return"true/"=3D=3D=3D(e.type||""=
).slice(0,5)?e.type=3De.type.slice(5):e.removeAttribute("type"),e}function =
Fe(e,t){var n,r,i,o,a,s;if(1=3D=3D=3Dt.nodeType){if(_.hasData(e)&&(s=3D_.ge=
t(e).events))for(i in _.remove(t,"handle events"),s)for(n=3D0,r=3Ds[i].leng=
th;n<r;n++)ce.event.add(t,i,s[i][n]);z.hasData(e)&&(o=3Dz.access(e),a=3Dce.=
extend({},o),z.set(t,a))}}function $e(n,r,i,o){r=3Dg(r);var e,t,a,s,u,l,c=
=3D0,f=3Dn.length,p=3Df-1,d=3Dr[0],h=3Dv(d);if(h||1<f&&"string"=3D=3Dtypeof=
 d&&!le.checkClone&&Pe.test(d))return n.each(function(e){var t=3Dn.eq(e);h&=
&(r[0]=3Dd.call(this,e,t.html())),$e(t,r,i,o)});if(f&&(t=3D(e=3DAe(r,n[0].o=
wnerDocument,!1,n,o)).firstChild,1=3D=3D=3De.childNodes.length&&(e=3Dt),t||=
o)){for(s=3D(a=3Dce.map(Se(e,"script"),Ie)).length;c<f;c++)u=3De,c!=3D=3Dp&=
&(u=3Dce.clone(u,!0,!0),s&&ce.merge(a,Se(u,"script"))),i.call(n[c],u,c);if(=
s)for(l=3Da[a.length-1].ownerDocument,ce.map(a,We),c=3D0;c<s;c++)u=3Da[c],C=
e.test(u.type||"")&&!_.access(u,"globalEval")&&ce.contains(l,u)&&(u.src&&"m=
odule"!=3D=3D(u.type||"").toLowerCase()?ce._evalUrl&&!u.noModule&&ce._evalU=
rl(u.src,{nonce:u.nonce||u.getAttribute("nonce")},l):m(u.textContent.replac=
e(Me,""),u,l))}return n}function Be(e,t,n){for(var r,i=3Dt?ce.filter(t,e):e=
,o=3D0;null!=3D(r=3Di[o]);o++)n||1!=3D=3Dr.nodeType||ce.cleanData(Se(r)),r.=
parentNode&&(n&&K(r)&&Ee(Se(r,"script")),r.parentNode.removeChild(r));retur=
n e}ce.extend({htmlPrefilter:function(e){return e},clone:function(e,t,n){va=
r r,i,o,a,s,u,l,c=3De.cloneNode(!0),f=3DK(e);if(!(le.noCloneChecked||1!=3D=
=3De.nodeType&&11!=3D=3De.nodeType||ce.isXMLDoc(e)))for(a=3DSe(c),r=3D0,i=
=3D(o=3DSe(e)).length;r<i;r++)s=3Do[r],u=3Da[r],void 0,"input"=3D=3D=3D(l=
=3Du.nodeName.toLowerCase())&&we.test(s.type)?u.checked=3Ds.checked:"input"=
!=3D=3Dl&&"textarea"!=3D=3Dl||(u.defaultValue=3Ds.defaultValue);if(t)if(n)f=
or(o=3Do||Se(e),a=3Da||Se(c),r=3D0,i=3Do.length;r<i;r++)Fe(o[r],a[r]);else =
Fe(e,c);return 0<(a=3DSe(c,"script")).length&&Ee(a,!f&&Se(e,"script")),c},c=
leanData:function(e){for(var t,n,r,i=3Dce.event.special,o=3D0;void 0!=3D=3D=
(n=3De[o]);o++)if($(n)){if(t=3Dn[_.expando]){if(t.events)for(r in t.events)=
i[r]?ce.event.remove(n,r):ce.removeEvent(n,r,t.handle);n[_.expando]=3Dvoid =
0}n[z.expando]&&(n[z.expando]=3Dvoid 0)}}}),ce.fn.extend({detach:function(e=
){return Be(this,e,!0)},remove:function(e){return Be(this,e)},text:function=
(e){return M(this,function(e){return void 0=3D=3D=3De?ce.text(this):this.em=
pty().each(function(){1!=3D=3Dthis.nodeType&&11!=3D=3Dthis.nodeType&&9!=3D=
=3Dthis.nodeType||(this.textContent=3De)})},null,e,arguments.length)},appen=
d:function(){return $e(this,arguments,function(e){1!=3D=3Dthis.nodeType&&11=
!=3D=3Dthis.nodeType&&9!=3D=3Dthis.nodeType||Re(this,e).appendChild(e)})},p=
repend:function(){return $e(this,arguments,function(e){if(1=3D=3D=3Dthis.no=
deType||11=3D=3D=3Dthis.nodeType||9=3D=3D=3Dthis.nodeType){var t=3DRe(this,=
e);t.insertBefore(e,t.firstChild)}})},before:function(){return $e(this,argu=
ments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this)})},=
after:function(){return $e(this,arguments,function(e){this.parentNode&&this=
.parentNode.insertBefore(e,this.nextSibling)})},empty:function(){for(var e,=
t=3D0;null!=3D(e=3Dthis[t]);t++)1=3D=3D=3De.nodeType&&(ce.cleanData(Se(e,!1=
)),e.textContent=3D"");return this},clone:function(e,t){return e=3Dnull!=3D=
e&&e,t=3Dnull=3D=3Dt?e:t,this.map(function(){return ce.clone(this,e,t)})},h=
tml:function(e){return M(this,function(e){var t=3Dthis[0]||{},n=3D0,r=3Dthi=
s.length;if(void 0=3D=3D=3De&&1=3D=3D=3Dt.nodeType)return t.innerHTML;if("s=
tring"=3D=3Dtypeof e&&!Oe.test(e)&&!ke[(Te.exec(e)||["",""])[1].toLowerCase=
()]){e=3Dce.htmlPrefilter(e);try{for(;n<r;n++)1=3D=3D=3D(t=3Dthis[n]||{}).n=
odeType&&(ce.cleanData(Se(t,!1)),t.innerHTML=3De);t=3D0}catch(e){}}t&&this.=
empty().append(e)},null,e,arguments.length)},replaceWith:function(){var n=
=3D[];return $e(this,arguments,function(e){var t=3Dthis.parentNode;ce.inArr=
ay(this,n)<0&&(ce.cleanData(Se(this)),t&&t.replaceChild(e,this))},n)}}),ce.=
each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAft=
er:"after",replaceAll:"replaceWith"},function(e,a){ce.fn[e]=3Dfunction(e){f=
or(var t,n=3D[],r=3Dce(e),i=3Dr.length-1,o=3D0;o<=3Di;o++)t=3Do=3D=3D=3Di?t=
his:this.clone(!0),ce(r[o])[a](t),s.apply(n,t.get());return this.pushStack(=
n)}});var _e=3Dnew RegExp("^("+G+")(?!px)[a-z%]+$","i"),ze=3D/^--/,Xe=3Dfun=
ction(e){var t=3De.ownerDocument.defaultView;return t&&t.opener||(t=3Die),t=
.getComputedStyle(e)},Ue=3Dfunction(e,t,n){var r,i,o=3D{};for(i in t)o[i]=
=3De.style[i],e.style[i]=3Dt[i];for(i in r=3Dn.call(e),t)e.style[i]=3Do[i];=
return r},Ve=3Dnew RegExp(Q.join("|"),"i");function Ge(e,t,n){var r,i,o,a,s=
=3Dze.test(t),u=3De.style;return(n=3Dn||Xe(e))&&(a=3Dn.getPropertyValue(t)|=
|n[t],s&&a&&(a=3Da.replace(ve,"$1")||void 0),""!=3D=3Da||K(e)||(a=3Dce.styl=
e(e,t)),!le.pixelBoxStyles()&&_e.test(a)&&Ve.test(t)&&(r=3Du.width,i=3Du.mi=
nWidth,o=3Du.maxWidth,u.minWidth=3Du.maxWidth=3Du.width=3Da,a=3Dn.width,u.w=
idth=3Dr,u.minWidth=3Di,u.maxWidth=3Do)),void 0!=3D=3Da?a+"":a}function Ye(=
e,t){return{get:function(){if(!e())return(this.get=3Dt).apply(this,argument=
s);delete this.get}}}!function(){function e(){if(l){u.style.cssText=3D"posi=
tion:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0",l=
.style.cssText=3D"position:relative;display:block;box-sizing:border-box;ove=
rflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%",J.appendC=
hild(u).appendChild(l);var e=3Die.getComputedStyle(l);n=3D"1%"!=3D=3De.top,=
s=3D12=3D=3D=3Dt(e.marginLeft),l.style.right=3D"60%",o=3D36=3D=3D=3Dt(e.rig=
ht),r=3D36=3D=3D=3Dt(e.width),l.style.position=3D"absolute",i=3D12=3D=3D=3D=
t(l.offsetWidth/3),J.removeChild(u),l=3Dnull}}function t(e){return Math.rou=
nd(parseFloat(e))}var n,r,i,o,a,s,u=3DC.createElement("div"),l=3DC.createEl=
ement("div");l.style&&(l.style.backgroundClip=3D"content-box",l.cloneNode(!=
0).style.backgroundClip=3D"",le.clearCloneStyle=3D"content-box"=3D=3D=3Dl.s=
tyle.backgroundClip,ce.extend(le,{boxSizingReliable:function(){return e(),r=
},pixelBoxStyles:function(){return e(),o},pixelPosition:function(){return e=
(),n},reliableMarginLeft:function(){return e(),s},scrollboxSize:function(){=
return e(),i},reliableTrDimensions:function(){var e,t,n,r;return null=3D=3D=
a&&(e=3DC.createElement("table"),t=3DC.createElement("tr"),n=3DC.createElem=
ent("div"),e.style.cssText=3D"position:absolute;left:-11111px;border-collap=
se:separate",t.style.cssText=3D"box-sizing:content-box;border:1px solid",t.=
style.height=3D"1px",n.style.height=3D"9px",n.style.display=3D"block",J.app=
endChild(e).appendChild(t).appendChild(n),r=3Die.getComputedStyle(t),a=3Dpa=
rseInt(r.height,10)+parseInt(r.borderTopWidth,10)+parseInt(r.borderBottomWi=
dth,10)=3D=3D=3Dt.offsetHeight,J.removeChild(e)),a}}))}();var Qe=3D["Webkit=
","Moz","ms"],Je=3DC.createElement("div").style,Ke=3D{};function Ze(e){var =
t=3Dce.cssProps[e]||Ke[e];return t||(e in Je?e:Ke[e]=3Dfunction(e){var t=3D=
e[0].toUpperCase()+e.slice(1),n=3DQe.length;while(n--)if((e=3DQe[n]+t)in Je=
)return e}(e)||e)}var et=3D/^(none|table(?!-c[ea]).+)/,tt=3D{position:"abso=
lute",visibility:"hidden",display:"block"},nt=3D{letterSpacing:"0",fontWeig=
ht:"400"};function rt(e,t,n){var r=3DY.exec(t);return r?Math.max(0,r[2]-(n|=
|0))+(r[3]||"px"):t}function it(e,t,n,r,i,o){var a=3D"width"=3D=3D=3Dt?1:0,=
s=3D0,u=3D0,l=3D0;if(n=3D=3D=3D(r?"border":"content"))return 0;for(;a<4;a+=
=3D2)"margin"=3D=3D=3Dn&&(l+=3Dce.css(e,n+Q[a],!0,i)),r?("content"=3D=3D=3D=
n&&(u-=3Dce.css(e,"padding"+Q[a],!0,i)),"margin"!=3D=3Dn&&(u-=3Dce.css(e,"b=
order"+Q[a]+"Width",!0,i))):(u+=3Dce.css(e,"padding"+Q[a],!0,i),"padding"!=
=3D=3Dn?u+=3Dce.css(e,"border"+Q[a]+"Width",!0,i):s+=3Dce.css(e,"border"+Q[=
a]+"Width",!0,i));return!r&&0<=3Do&&(u+=3DMath.max(0,Math.ceil(e["offset"+t=
[0].toUpperCase()+t.slice(1)]-o-u-s-.5))||0),u+l}function ot(e,t,n){var r=
=3DXe(e),i=3D(!le.boxSizingReliable()||n)&&"border-box"=3D=3D=3Dce.css(e,"b=
oxSizing",!1,r),o=3Di,a=3DGe(e,t,r),s=3D"offset"+t[0].toUpperCase()+t.slice=
(1);if(_e.test(a)){if(!n)return a;a=3D"auto"}return(!le.boxSizingReliable()=
&&i||!le.reliableTrDimensions()&&fe(e,"tr")||"auto"=3D=3D=3Da||!parseFloat(=
a)&&"inline"=3D=3D=3Dce.css(e,"display",!1,r))&&e.getClientRects().length&&=
(i=3D"border-box"=3D=3D=3Dce.css(e,"boxSizing",!1,r),(o=3Ds in e)&&(a=3De[s=
])),(a=3DparseFloat(a)||0)+it(e,t,n||(i?"border":"content"),o,r,a)+"px"}fun=
ction at(e,t,n,r,i){return new at.prototype.init(e,t,n,r,i)}ce.extend({cssH=
ooks:{opacity:{get:function(e,t){if(t){var n=3DGe(e,"opacity");return""=3D=
=3D=3Dn?"1":n}}}},cssNumber:{animationIterationCount:!0,aspectRatio:!0,bord=
erImageSlice:!0,columnCount:!0,flexGrow:!0,flexShrink:!0,fontWeight:!0,grid=
Area:!0,gridColumn:!0,gridColumnEnd:!0,gridColumnStart:!0,gridRow:!0,gridRo=
wEnd:!0,gridRowStart:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,scale:=
!0,widows:!0,zIndex:!0,zoom:!0,fillOpacity:!0,floodOpacity:!0,stopOpacity:!=
0,strokeMiterlimit:!0,strokeOpacity:!0},cssProps:{},style:function(e,t,n,r)=
{if(e&&3!=3D=3De.nodeType&&8!=3D=3De.nodeType&&e.style){var i,o,a,s=3DF(t),=
u=3Dze.test(t),l=3De.style;if(u||(t=3DZe(s)),a=3Dce.cssHooks[t]||ce.cssHook=
s[s],void 0=3D=3D=3Dn)return a&&"get"in a&&void 0!=3D=3D(i=3Da.get(e,!1,r))=
?i:l[t];"string"=3D=3D=3D(o=3Dtypeof n)&&(i=3DY.exec(n))&&i[1]&&(n=3Dte(e,t=
,i),o=3D"number"),null!=3Dn&&n=3D=3Dn&&("number"!=3D=3Do||u||(n+=3Di&&i[3]|=
|(ce.cssNumber[s]?"":"px")),le.clearCloneStyle||""!=3D=3Dn||0!=3D=3Dt.index=
Of("background")||(l[t]=3D"inherit"),a&&"set"in a&&void 0=3D=3D=3D(n=3Da.se=
t(e,n,r))||(u?l.setProperty(t,n):l[t]=3Dn))}},css:function(e,t,n,r){var i,o=
,a,s=3DF(t);return ze.test(t)||(t=3DZe(s)),(a=3Dce.cssHooks[t]||ce.cssHooks=
[s])&&"get"in a&&(i=3Da.get(e,!0,n)),void 0=3D=3D=3Di&&(i=3DGe(e,t,r)),"nor=
mal"=3D=3D=3Di&&t in nt&&(i=3Dnt[t]),""=3D=3D=3Dn||n?(o=3DparseFloat(i),!0=
=3D=3D=3Dn||isFinite(o)?o||0:i):i}}),ce.each(["height","width"],function(e,=
u){ce.cssHooks[u]=3D{get:function(e,t,n){if(t)return!et.test(ce.css(e,"disp=
lay"))||e.getClientRects().length&&e.getBoundingClientRect().width?ot(e,u,n=
):Ue(e,tt,function(){return ot(e,u,n)})},set:function(e,t,n){var r,i=3DXe(e=
),o=3D!le.scrollboxSize()&&"absolute"=3D=3D=3Di.position,a=3D(o||n)&&"borde=
r-box"=3D=3D=3Dce.css(e,"boxSizing",!1,i),s=3Dn?it(e,u,n,a,i):0;return a&&o=
&&(s-=3DMath.ceil(e["offset"+u[0].toUpperCase()+u.slice(1)]-parseFloat(i[u]=
)-it(e,u,"border",!1,i)-.5)),s&&(r=3DY.exec(t))&&"px"!=3D=3D(r[3]||"px")&&(=
e.style[u]=3Dt,t=3Dce.css(e,u)),rt(0,t,s)}}}),ce.cssHooks.marginLeft=3DYe(l=
e.reliableMarginLeft,function(e,t){if(t)return(parseFloat(Ge(e,"marginLeft"=
))||e.getBoundingClientRect().left-Ue(e,{marginLeft:0},function(){return e.=
getBoundingClientRect().left}))+"px"}),ce.each({margin:"",padding:"",border=
:"Width"},function(i,o){ce.cssHooks[i+o]=3D{expand:function(e){for(var t=3D=
0,n=3D{},r=3D"string"=3D=3Dtypeof e?e.split(" "):[e];t<4;t++)n[i+Q[t]+o]=3D=
r[t]||r[t-2]||r[0];return n}},"margin"!=3D=3Di&&(ce.cssHooks[i+o].set=3Drt)=
}),ce.fn.extend({css:function(e,t){return M(this,function(e,t,n){var r,i,o=
=3D{},a=3D0;if(Array.isArray(t)){for(r=3DXe(e),i=3Dt.length;a<i;a++)o[t[a]]=
=3Dce.css(e,t[a],!1,r);return o}return void 0!=3D=3Dn?ce.style(e,t,n):ce.cs=
s(e,t)},e,t,1<arguments.length)}}),((ce.Tween=3Dat).prototype=3D{constructo=
r:at,init:function(e,t,n,r,i,o){this.elem=3De,this.prop=3Dn,this.easing=3Di=
||ce.easing._default,this.options=3Dt,this.start=3Dthis.now=3Dthis.cur(),th=
is.end=3Dr,this.unit=3Do||(ce.cssNumber[n]?"":"px")},cur:function(){var e=
=3Dat.propHooks[this.prop];return e&&e.get?e.get(this):at.propHooks._defaul=
t.get(this)},run:function(e){var t,n=3Dat.propHooks[this.prop];return this.=
options.duration?this.pos=3Dt=3Dce.easing[this.easing](e,this.options.durat=
ion*e,0,1,this.options.duration):this.pos=3Dt=3De,this.now=3D(this.end-this=
.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,th=
is.now,this),n&&n.set?n.set(this):at.propHooks._default.set(this),this}}).i=
nit.prototype=3Dat.prototype,(at.propHooks=3D{_default:{get:function(e){var=
 t;return 1!=3D=3De.elem.nodeType||null!=3De.elem[e.prop]&&null=3D=3De.elem=
.style[e.prop]?e.elem[e.prop]:(t=3Dce.css(e.elem,e.prop,""))&&"auto"!=3D=3D=
t?t:0},set:function(e){ce.fx.step[e.prop]?ce.fx.step[e.prop](e):1!=3D=3De.e=
lem.nodeType||!ce.cssHooks[e.prop]&&null=3D=3De.elem.style[Ze(e.prop)]?e.el=
em[e.prop]=3De.now:ce.style(e.elem,e.prop,e.now+e.unit)}}}).scrollTop=3Dat.=
propHooks.scrollLeft=3D{set:function(e){e.elem.nodeType&&e.elem.parentNode&=
&(e.elem[e.prop]=3De.now)}},ce.easing=3D{linear:function(e){return e},swing=
:function(e){return.5-Math.cos(e*Math.PI)/2},_default:"swing"},ce.fx=3Dat.p=
rototype.init,ce.fx.step=3D{};var st,ut,lt,ct,ft=3D/^(?:toggle|show|hide)$/=
,pt=3D/queueHooks$/;function dt(){ut&&(!1=3D=3D=3DC.hidden&&ie.requestAnima=
tionFrame?ie.requestAnimationFrame(dt):ie.setTimeout(dt,ce.fx.interval),ce.=
fx.tick())}function ht(){return ie.setTimeout(function(){st=3Dvoid 0}),st=
=3DDate.now()}function gt(e,t){var n,r=3D0,i=3D{height:e};for(t=3Dt?1:0;r<4=
;r+=3D2-t)i["margin"+(n=3DQ[r])]=3Di["padding"+n]=3De;return t&&(i.opacity=
=3Di.width=3De),i}function vt(e,t,n){for(var r,i=3D(yt.tweeners[t]||[]).con=
cat(yt.tweeners["*"]),o=3D0,a=3Di.length;o<a;o++)if(r=3Di[o].call(n,t,e))re=
turn r}function yt(o,e,t){var n,a,r=3D0,i=3Dyt.prefilters.length,s=3Dce.Def=
erred().always(function(){delete u.elem}),u=3Dfunction(){if(a)return!1;for(=
var e=3Dst||ht(),t=3DMath.max(0,l.startTime+l.duration-e),n=3D1-(t/l.durati=
on||0),r=3D0,i=3Dl.tweens.length;r<i;r++)l.tweens[r].run(n);return s.notify=
With(o,[l,n,t]),n<1&&i?t:(i||s.notifyWith(o,[l,1,0]),s.resolveWith(o,[l]),!=
1)},l=3Ds.promise({elem:o,props:ce.extend({},e),opts:ce.extend(!0,{specialE=
asing:{},easing:ce.easing._default},t),originalProperties:e,originalOptions=
:t,startTime:st||ht(),duration:t.duration,tweens:[],createTween:function(e,=
t){var n=3Dce.Tween(o,l.opts,e,t,l.opts.specialEasing[e]||l.opts.easing);re=
turn l.tweens.push(n),n},stop:function(e){var t=3D0,n=3De?l.tweens.length:0=
;if(a)return this;for(a=3D!0;t<n;t++)l.tweens[t].run(1);return e?(s.notifyW=
ith(o,[l,1,0]),s.resolveWith(o,[l,e])):s.rejectWith(o,[l,e]),this}}),c=3Dl.=
props;for(!function(e,t){var n,r,i,o,a;for(n in e)if(i=3Dt[r=3DF(n)],o=3De[=
n],Array.isArray(o)&&(i=3Do[1],o=3De[n]=3Do[0]),n!=3D=3Dr&&(e[r]=3Do,delete=
 e[n]),(a=3Dce.cssHooks[r])&&"expand"in a)for(n in o=3Da.expand(o),delete e=
[r],o)n in e||(e[n]=3Do[n],t[n]=3Di);else t[r]=3Di}(c,l.opts.specialEasing)=
;r<i;r++)if(n=3Dyt.prefilters[r].call(l,o,c,l.opts))return v(n.stop)&&(ce._=
queueHooks(l.elem,l.opts.queue).stop=3Dn.stop.bind(n)),n;return ce.map(c,vt=
,l),v(l.opts.start)&&l.opts.start.call(o,l),l.progress(l.opts.progress).don=
e(l.opts.done,l.opts.complete).fail(l.opts.fail).always(l.opts.always),ce.f=
x.timer(ce.extend(u,{elem:o,anim:l,queue:l.opts.queue})),l}ce.Animation=3Dc=
e.extend(yt,{tweeners:{"*":[function(e,t){var n=3Dthis.createTween(e,t);ret=
urn te(n.elem,e,Y.exec(t),n),n}]},tweener:function(e,t){v(e)?(t=3De,e=3D["*=
"]):e=3De.match(D);for(var n,r=3D0,i=3De.length;r<i;r++)n=3De[r],yt.tweener=
s[n]=3Dyt.tweeners[n]||[],yt.tweeners[n].unshift(t)},prefilters:[function(e=
,t,n){var r,i,o,a,s,u,l,c,f=3D"width"in t||"height"in t,p=3Dthis,d=3D{},h=
=3De.style,g=3De.nodeType&&ee(e),v=3D_.get(e,"fxshow");for(r in n.queue||(n=
ull=3D=3D(a=3Dce._queueHooks(e,"fx")).unqueued&&(a.unqueued=3D0,s=3Da.empty=
.fire,a.empty.fire=3Dfunction(){a.unqueued||s()}),a.unqueued++,p.always(fun=
ction(){p.always(function(){a.unqueued--,ce.queue(e,"fx").length||a.empty.f=
ire()})})),t)if(i=3Dt[r],ft.test(i)){if(delete t[r],o=3Do||"toggle"=3D=3D=
=3Di,i=3D=3D=3D(g?"hide":"show")){if("show"!=3D=3Di||!v||void 0=3D=3D=3Dv[r=
])continue;g=3D!0}d[r]=3Dv&&v[r]||ce.style(e,r)}if((u=3D!ce.isEmptyObject(t=
))||!ce.isEmptyObject(d))for(r in f&&1=3D=3D=3De.nodeType&&(n.overflow=3D[h=
.overflow,h.overflowX,h.overflowY],null=3D=3D(l=3Dv&&v.display)&&(l=3D_.get=
(e,"display")),"none"=3D=3D=3D(c=3Dce.css(e,"display"))&&(l?c=3Dl:(re([e],!=
0),l=3De.style.display||l,c=3Dce.css(e,"display"),re([e]))),("inline"=3D=3D=
=3Dc||"inline-block"=3D=3D=3Dc&&null!=3Dl)&&"none"=3D=3D=3Dce.css(e,"float"=
)&&(u||(p.done(function(){h.display=3Dl}),null=3D=3Dl&&(c=3Dh.display,l=3D"=
none"=3D=3D=3Dc?"":c)),h.display=3D"inline-block")),n.overflow&&(h.overflow=
=3D"hidden",p.always(function(){h.overflow=3Dn.overflow[0],h.overflowX=3Dn.=
overflow[1],h.overflowY=3Dn.overflow[2]})),u=3D!1,d)u||(v?"hidden"in v&&(g=
=3Dv.hidden):v=3D_.access(e,"fxshow",{display:l}),o&&(v.hidden=3D!g),g&&re(=
[e],!0),p.done(function(){for(r in g||re([e]),_.remove(e,"fxshow"),d)ce.sty=
le(e,r,d[r])})),u=3Dvt(g?v[r]:0,r,p),r in v||(v[r]=3Du.start,g&&(u.end=3Du.=
start,u.start=3D0))}],prefilter:function(e,t){t?yt.prefilters.unshift(e):yt=
.prefilters.push(e)}}),ce.speed=3Dfunction(e,t,n){var r=3De&&"object"=3D=3D=
typeof e?ce.extend({},e):{complete:n||!n&&t||v(e)&&e,duration:e,easing:n&&t=
||t&&!v(t)&&t};return ce.fx.off?r.duration=3D0:"number"!=3Dtypeof r.duratio=
n&&(r.duration in ce.fx.speeds?r.duration=3Dce.fx.speeds[r.duration]:r.dura=
tion=3Dce.fx.speeds._default),null!=3Dr.queue&&!0!=3D=3Dr.queue||(r.queue=
=3D"fx"),r.old=3Dr.complete,r.complete=3Dfunction(){v(r.old)&&r.old.call(th=
is),r.queue&&ce.dequeue(this,r.queue)},r},ce.fn.extend({fadeTo:function(e,t=
,n,r){return this.filter(ee).css("opacity",0).show().end().animate({opacity=
:t},e,n,r)},animate:function(t,e,n,r){var i=3Dce.isEmptyObject(t),o=3Dce.sp=
eed(e,n,r),a=3Dfunction(){var e=3Dyt(this,ce.extend({},t),o);(i||_.get(this=
,"finish"))&&e.stop(!0)};return a.finish=3Da,i||!1=3D=3D=3Do.queue?this.eac=
h(a):this.queue(o.queue,a)},stop:function(i,e,o){var a=3Dfunction(e){var t=
=3De.stop;delete e.stop,t(o)};return"string"!=3Dtypeof i&&(o=3De,e=3Di,i=3D=
void 0),e&&this.queue(i||"fx",[]),this.each(function(){var e=3D!0,t=3Dnull!=
=3Di&&i+"queueHooks",n=3Dce.timers,r=3D_.get(this);if(t)r[t]&&r[t].stop&&a(=
r[t]);else for(t in r)r[t]&&r[t].stop&&pt.test(t)&&a(r[t]);for(t=3Dn.length=
;t--;)n[t].elem!=3D=3Dthis||null!=3Di&&n[t].queue!=3D=3Di||(n[t].anim.stop(=
o),e=3D!1,n.splice(t,1));!e&&o||ce.dequeue(this,i)})},finish:function(a){re=
turn!1!=3D=3Da&&(a=3Da||"fx"),this.each(function(){var e,t=3D_.get(this),n=
=3Dt[a+"queue"],r=3Dt[a+"queueHooks"],i=3Dce.timers,o=3Dn?n.length:0;for(t.=
finish=3D!0,ce.queue(this,a,[]),r&&r.stop&&r.stop.call(this,!0),e=3Di.lengt=
h;e--;)i[e].elem=3D=3D=3Dthis&&i[e].queue=3D=3D=3Da&&(i[e].anim.stop(!0),i.=
splice(e,1));for(e=3D0;e<o;e++)n[e]&&n[e].finish&&n[e].finish.call(this);de=
lete t.finish})}}),ce.each(["toggle","show","hide"],function(e,r){var i=3Dc=
e.fn[r];ce.fn[r]=3Dfunction(e,t,n){return null=3D=3De||"boolean"=3D=3Dtypeo=
f e?i.apply(this,arguments):this.animate(gt(r,!0),e,t,n)}}),ce.each({slideD=
own:gt("show"),slideUp:gt("hide"),slideToggle:gt("toggle"),fadeIn:{opacity:=
"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,=
r){ce.fn[e]=3Dfunction(e,t,n){return this.animate(r,e,t,n)}}),ce.timers=3D[=
],ce.fx.tick=3Dfunction(){var e,t=3D0,n=3Dce.timers;for(st=3DDate.now();t<n=
.length;t++)(e=3Dn[t])()||n[t]!=3D=3De||n.splice(t--,1);n.length||ce.fx.sto=
p(),st=3Dvoid 0},ce.fx.timer=3Dfunction(e){ce.timers.push(e),ce.fx.start()}=
,ce.fx.interval=3D13,ce.fx.start=3Dfunction(){ut||(ut=3D!0,dt())},ce.fx.sto=
p=3Dfunction(){ut=3Dnull},ce.fx.speeds=3D{slow:600,fast:200,_default:400},c=
e.fn.delay=3Dfunction(r,e){return r=3Dce.fx&&ce.fx.speeds[r]||r,e=3De||"fx"=
,this.queue(e,function(e,t){var n=3Die.setTimeout(e,r);t.stop=3Dfunction(){=
ie.clearTimeout(n)}})},lt=3DC.createElement("input"),ct=3DC.createElement("=
select").appendChild(C.createElement("option")),lt.type=3D"checkbox",le.che=
ckOn=3D""!=3D=3Dlt.value,le.optSelected=3Dct.selected,(lt=3DC.createElement=
("input")).value=3D"t",lt.type=3D"radio",le.radioValue=3D"t"=3D=3D=3Dlt.val=
ue;var mt,xt=3Dce.expr.attrHandle;ce.fn.extend({attr:function(e,t){return M=
(this,ce.attr,e,t,1<arguments.length)},removeAttr:function(e){return this.e=
ach(function(){ce.removeAttr(this,e)})}}),ce.extend({attr:function(e,t,n){v=
ar r,i,o=3De.nodeType;if(3!=3D=3Do&&8!=3D=3Do&&2!=3D=3Do)return"undefined"=
=3D=3Dtypeof e.getAttribute?ce.prop(e,t,n):(1=3D=3D=3Do&&ce.isXMLDoc(e)||(i=
=3Dce.attrHooks[t.toLowerCase()]||(ce.expr.match.bool.test(t)?mt:void 0)),v=
oid 0!=3D=3Dn?null=3D=3D=3Dn?void ce.removeAttr(e,t):i&&"set"in i&&void 0!=
=3D=3D(r=3Di.set(e,n,t))?r:(e.setAttribute(t,n+""),n):i&&"get"in i&&null!=
=3D=3D(r=3Di.get(e,t))?r:null=3D=3D(r=3Dce.find.attr(e,t))?void 0:r)},attrH=
ooks:{type:{set:function(e,t){if(!le.radioValue&&"radio"=3D=3D=3Dt&&fe(e,"i=
nput")){var n=3De.value;return e.setAttribute("type",t),n&&(e.value=3Dn),t}=
}}},removeAttr:function(e,t){var n,r=3D0,i=3Dt&&t.match(D);if(i&&1=3D=3D=3D=
e.nodeType)while(n=3Di[r++])e.removeAttribute(n)}}),mt=3D{set:function(e,t,=
n){return!1=3D=3D=3Dt?ce.removeAttr(e,n):e.setAttribute(n,n),n}},ce.each(ce=
.expr.match.bool.source.match(/\w+/g),function(e,t){var a=3Dxt[t]||ce.find.=
attr;xt[t]=3Dfunction(e,t,n){var r,i,o=3Dt.toLowerCase();return n||(i=3Dxt[=
o],xt[o]=3Dr,r=3Dnull!=3Da(e,t,n)?o:null,xt[o]=3Di),r}});var bt=3D/^(?:inpu=
t|select|textarea|button)$/i,wt=3D/^(?:a|area)$/i;function Tt(e){return(e.m=
atch(D)||[]).join(" ")}function Ct(e){return e.getAttribute&&e.getAttribute=
("class")||""}function kt(e){return Array.isArray(e)?e:"string"=3D=3Dtypeof=
 e&&e.match(D)||[]}ce.fn.extend({prop:function(e,t){return M(this,ce.prop,e=
,t,1<arguments.length)},removeProp:function(e){return this.each(function(){=
delete this[ce.propFix[e]||e]})}}),ce.extend({prop:function(e,t,n){var r,i,=
o=3De.nodeType;if(3!=3D=3Do&&8!=3D=3Do&&2!=3D=3Do)return 1=3D=3D=3Do&&ce.is=
XMLDoc(e)||(t=3Dce.propFix[t]||t,i=3Dce.propHooks[t]),void 0!=3D=3Dn?i&&"se=
t"in i&&void 0!=3D=3D(r=3Di.set(e,n,t))?r:e[t]=3Dn:i&&"get"in i&&null!=3D=
=3D(r=3Di.get(e,t))?r:e[t]},propHooks:{tabIndex:{get:function(e){var t=3Dce=
.find.attr(e,"tabindex");return t?parseInt(t,10):bt.test(e.nodeName)||wt.te=
st(e.nodeName)&&e.href?0:-1}}},propFix:{"for":"htmlFor","class":"className"=
}}),le.optSelected||(ce.propHooks.selected=3D{get:function(e){var t=3De.par=
entNode;return t&&t.parentNode&&t.parentNode.selectedIndex,null},set:functi=
on(e){var t=3De.parentNode;t&&(t.selectedIndex,t.parentNode&&t.parentNode.s=
electedIndex)}}),ce.each(["tabIndex","readOnly","maxLength","cellSpacing","=
cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],=
function(){ce.propFix[this.toLowerCase()]=3Dthis}),ce.fn.extend({addClass:f=
unction(t){var e,n,r,i,o,a;return v(t)?this.each(function(e){ce(this).addCl=
ass(t.call(this,e,Ct(this)))}):(e=3Dkt(t)).length?this.each(function(){if(r=
=3DCt(this),n=3D1=3D=3D=3Dthis.nodeType&&" "+Tt(r)+" "){for(o=3D0;o<e.lengt=
h;o++)i=3De[o],n.indexOf(" "+i+" ")<0&&(n+=3Di+" ");a=3DTt(n),r!=3D=3Da&&th=
is.setAttribute("class",a)}}):this},removeClass:function(t){var e,n,r,i,o,a=
;return v(t)?this.each(function(e){ce(this).removeClass(t.call(this,e,Ct(th=
is)))}):arguments.length?(e=3Dkt(t)).length?this.each(function(){if(r=3DCt(=
this),n=3D1=3D=3D=3Dthis.nodeType&&" "+Tt(r)+" "){for(o=3D0;o<e.length;o++)=
{i=3De[o];while(-1<n.indexOf(" "+i+" "))n=3Dn.replace(" "+i+" "," ")}a=3DTt=
(n),r!=3D=3Da&&this.setAttribute("class",a)}}):this:this.attr("class","")},=
toggleClass:function(t,n){var e,r,i,o,a=3Dtypeof t,s=3D"string"=3D=3D=3Da||=
Array.isArray(t);return v(t)?this.each(function(e){ce(this).toggleClass(t.c=
all(this,e,Ct(this),n),n)}):"boolean"=3D=3Dtypeof n&&s?n?this.addClass(t):t=
his.removeClass(t):(e=3Dkt(t),this.each(function(){if(s)for(o=3Dce(this),i=
=3D0;i<e.length;i++)r=3De[i],o.hasClass(r)?o.removeClass(r):o.addClass(r);e=
lse void 0!=3D=3Dt&&"boolean"!=3D=3Da||((r=3DCt(this))&&_.set(this,"__class=
Name__",r),this.setAttribute&&this.setAttribute("class",r||!1=3D=3D=3Dt?"":=
_.get(this,"__className__")||""))}))},hasClass:function(e){var t,n,r=3D0;t=
=3D" "+e+" ";while(n=3Dthis[r++])if(1=3D=3D=3Dn.nodeType&&-1<(" "+Tt(Ct(n))=
+" ").indexOf(t))return!0;return!1}});var St=3D/\r/g;ce.fn.extend({val:func=
tion(n){var r,e,i,t=3Dthis[0];return arguments.length?(i=3Dv(n),this.each(f=
unction(e){var t;1=3D=3D=3Dthis.nodeType&&(null=3D=3D(t=3Di?n.call(this,e,c=
e(this).val()):n)?t=3D"":"number"=3D=3Dtypeof t?t+=3D"":Array.isArray(t)&&(=
t=3Dce.map(t,function(e){return null=3D=3De?"":e+""})),(r=3Dce.valHooks[thi=
s.type]||ce.valHooks[this.nodeName.toLowerCase()])&&"set"in r&&void 0!=3D=
=3Dr.set(this,t,"value")||(this.value=3Dt))})):t?(r=3Dce.valHooks[t.type]||=
ce.valHooks[t.nodeName.toLowerCase()])&&"get"in r&&void 0!=3D=3D(e=3Dr.get(=
t,"value"))?e:"string"=3D=3Dtypeof(e=3Dt.value)?e.replace(St,""):null=3D=3D=
e?"":e:void 0}}),ce.extend({valHooks:{option:{get:function(e){var t=3Dce.fi=
nd.attr(e,"value");return null!=3Dt?t:Tt(ce.text(e))}},select:{get:function=
(e){var t,n,r,i=3De.options,o=3De.selectedIndex,a=3D"select-one"=3D=3D=3De.=
type,s=3Da?null:[],u=3Da?o+1:i.length;for(r=3Do<0?u:a?o:0;r<u;r++)if(((n=3D=
i[r]).selected||r=3D=3D=3Do)&&!n.disabled&&(!n.parentNode.disabled||!fe(n.p=
arentNode,"optgroup"))){if(t=3Dce(n).val(),a)return t;s.push(t)}return s},s=
et:function(e,t){var n,r,i=3De.options,o=3Dce.makeArray(t),a=3Di.length;whi=
le(a--)((r=3Di[a]).selected=3D-1<ce.inArray(ce.valHooks.option.get(r),o))&&=
(n=3D!0);return n||(e.selectedIndex=3D-1),o}}}}),ce.each(["radio","checkbox=
"],function(){ce.valHooks[this]=3D{set:function(e,t){if(Array.isArray(t))re=
turn e.checked=3D-1<ce.inArray(ce(e).val(),t)}},le.checkOn||(ce.valHooks[th=
is].get=3Dfunction(e){return null=3D=3D=3De.getAttribute("value")?"on":e.va=
lue})});var Et=3Die.location,jt=3D{guid:Date.now()},At=3D/\?/;ce.parseXML=
=3Dfunction(e){var t,n;if(!e||"string"!=3Dtypeof e)return null;try{t=3D(new=
 ie.DOMParser).parseFromString(e,"text/xml")}catch(e){}return n=3Dt&&t.getE=
lementsByTagName("parsererror")[0],t&&!n||ce.error("Invalid XML: "+(n?ce.ma=
p(n.childNodes,function(e){return e.textContent}).join("\n"):e)),t};var Dt=
=3D/^(?:focusinfocus|focusoutblur)$/,Nt=3Dfunction(e){e.stopPropagation()};=
ce.extend(ce.event,{trigger:function(e,t,n,r){var i,o,a,s,u,l,c,f,p=3D[n||C=
],d=3Due.call(e,"type")?e.type:e,h=3Due.call(e,"namespace")?e.namespace.spl=
it("."):[];if(o=3Df=3Da=3Dn=3Dn||C,3!=3D=3Dn.nodeType&&8!=3D=3Dn.nodeType&&=
!Dt.test(d+ce.event.triggered)&&(-1<d.indexOf(".")&&(d=3D(h=3Dd.split("."))=
.shift(),h.sort()),u=3Dd.indexOf(":")<0&&"on"+d,(e=3De[ce.expando]?e:new ce=
.Event(d,"object"=3D=3Dtypeof e&&e)).isTrigger=3Dr?2:3,e.namespace=3Dh.join=
("."),e.rnamespace=3De.namespace?new RegExp("(^|\\.)"+h.join("\\.(?:.*\\.|)=
")+"(\\.|$)"):null,e.result=3Dvoid 0,e.target||(e.target=3Dn),t=3Dnull=3D=
=3Dt?[e]:ce.makeArray(t,[e]),c=3Dce.event.special[d]||{},r||!c.trigger||!1!=
=3D=3Dc.trigger.apply(n,t))){if(!r&&!c.noBubble&&!y(n)){for(s=3Dc.delegateT=
ype||d,Dt.test(s+d)||(o=3Do.parentNode);o;o=3Do.parentNode)p.push(o),a=3Do;=
a=3D=3D=3D(n.ownerDocument||C)&&p.push(a.defaultView||a.parentWindow||ie)}i=
=3D0;while((o=3Dp[i++])&&!e.isPropagationStopped())f=3Do,e.type=3D1<i?s:c.b=
indType||d,(l=3D(_.get(o,"events")||Object.create(null))[e.type]&&_.get(o,"=
handle"))&&l.apply(o,t),(l=3Du&&o[u])&&l.apply&&$(o)&&(e.result=3Dl.apply(o=
,t),!1=3D=3D=3De.result&&e.preventDefault());return e.type=3Dd,r||e.isDefau=
ltPrevented()||c._default&&!1!=3D=3Dc._default.apply(p.pop(),t)||!$(n)||u&&=
v(n[d])&&!y(n)&&((a=3Dn[u])&&(n[u]=3Dnull),ce.event.triggered=3Dd,e.isPropa=
gationStopped()&&f.addEventListener(d,Nt),n[d](),e.isPropagationStopped()&&=
f.removeEventListener(d,Nt),ce.event.triggered=3Dvoid 0,a&&(n[u]=3Da)),e.re=
sult}},simulate:function(e,t,n){var r=3Dce.extend(new ce.Event,n,{type:e,is=
Simulated:!0});ce.event.trigger(r,null,t)}}),ce.fn.extend({trigger:function=
(e,t){return this.each(function(){ce.event.trigger(e,t,this)})},triggerHand=
ler:function(e,t){var n=3Dthis[0];if(n)return ce.event.trigger(e,t,n,!0)}})=
;var qt=3D/\[\]$/,Lt=3D/\r?\n/g,Ht=3D/^(?:submit|button|image|reset|file)$/=
i,Ot=3D/^(?:input|select|textarea|keygen)/i;function Pt(n,e,r,i){var t;if(A=
rray.isArray(e))ce.each(e,function(e,t){r||qt.test(n)?i(n,t):Pt(n+"["+("obj=
ect"=3D=3Dtypeof t&&null!=3Dt?e:"")+"]",t,r,i)});else if(r||"object"!=3D=3D=
x(e))i(n,e);else for(t in e)Pt(n+"["+t+"]",e[t],r,i)}ce.param=3Dfunction(e,=
t){var n,r=3D[],i=3Dfunction(e,t){var n=3Dv(t)?t():t;r[r.length]=3DencodeUR=
IComponent(e)+"=3D"+encodeURIComponent(null=3D=3Dn?"":n)};if(null=3D=3De)re=
turn"";if(Array.isArray(e)||e.jquery&&!ce.isPlainObject(e))ce.each(e,functi=
on(){i(this.name,this.value)});else for(n in e)Pt(n,e[n],t,i);return r.join=
("&")},ce.fn.extend({serialize:function(){return ce.param(this.serializeArr=
ay())},serializeArray:function(){return this.map(function(){var e=3Dce.prop=
(this,"elements");return e?ce.makeArray(e):this}).filter(function(){var e=
=3Dthis.type;return this.name&&!ce(this).is(":disabled")&&Ot.test(this.node=
Name)&&!Ht.test(e)&&(this.checked||!we.test(e))}).map(function(e,t){var n=
=3Dce(this).val();return null=3D=3Dn?null:Array.isArray(n)?ce.map(n,functio=
n(e){return{name:t.name,value:e.replace(Lt,"\r\n")}}):{name:t.name,value:n.=
replace(Lt,"\r\n")}}).get()}});var Mt=3D/%20/g,Rt=3D/#.*$/,It=3D/([?&])_=3D=
[^&]*/,Wt=3D/^(.*?):[ \t]*([^\r\n]*)$/gm,Ft=3D/^(?:GET|HEAD)$/,$t=3D/^\/\//=
,Bt=3D{},_t=3D{},zt=3D"*/".concat("*"),Xt=3DC.createElement("a");function U=
t(o){return function(e,t){"string"!=3Dtypeof e&&(t=3De,e=3D"*");var n,r=3D0=
,i=3De.toLowerCase().match(D)||[];if(v(t))while(n=3Di[r++])"+"=3D=3D=3Dn[0]=
?(n=3Dn.slice(1)||"*",(o[n]=3Do[n]||[]).unshift(t)):(o[n]=3Do[n]||[]).push(=
t)}}function Vt(t,i,o,a){var s=3D{},u=3Dt=3D=3D=3D_t;function l(e){var r;re=
turn s[e]=3D!0,ce.each(t[e]||[],function(e,t){var n=3Dt(i,o,a);return"strin=
g"!=3Dtypeof n||u||s[n]?u?!(r=3Dn):void 0:(i.dataTypes.unshift(n),l(n),!1)}=
),r}return l(i.dataTypes[0])||!s["*"]&&l("*")}function Gt(e,t){var n,r,i=3D=
ce.ajaxSettings.flatOptions||{};for(n in t)void 0!=3D=3Dt[n]&&((i[n]?e:r||(=
r=3D{}))[n]=3Dt[n]);return r&&ce.extend(!0,e,r),e}Xt.href=3DEt.href,ce.exte=
nd({active:0,lastModified:{},etag:{},ajaxSettings:{url:Et.href,type:"GET",i=
sLocal:/^(?:about|app|app-storage|.+-extension|file|res|widget):$/.test(Et.=
protocol),global:!0,processData:!0,async:!0,contentType:"application/x-www-=
form-urlencoded; charset=3DUTF-8",accepts:{"*":zt,text:"text/plain",html:"t=
ext/html",xml:"application/xml, text/xml",json:"application/json, text/java=
script"},contents:{xml:/\bxml\b/,html:/\bhtml/,json:/\bjson\b/},responseFie=
lds:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:=
{"* text":String,"text html":!0,"text json":JSON.parse,"text xml":ce.parseX=
ML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(e,t){return t?Gt(Gt=
(e,ce.ajaxSettings),t):Gt(ce.ajaxSettings,e)},ajaxPrefilter:Ut(Bt),ajaxTran=
sport:Ut(_t),ajax:function(e,t){"object"=3D=3Dtypeof e&&(t=3De,e=3Dvoid 0),=
t=3Dt||{};var c,f,p,n,d,r,h,g,i,o,v=3Dce.ajaxSetup({},t),y=3Dv.context||v,m=
=3Dv.context&&(y.nodeType||y.jquery)?ce(y):ce.event,x=3Dce.Deferred(),b=3Dc=
e.Callbacks("once memory"),w=3Dv.statusCode||{},a=3D{},s=3D{},u=3D"canceled=
",T=3D{readyState:0,getResponseHeader:function(e){var t;if(h){if(!n){n=3D{}=
;while(t=3DWt.exec(p))n[t[1].toLowerCase()+" "]=3D(n[t[1].toLowerCase()+" "=
]||[]).concat(t[2])}t=3Dn[e.toLowerCase()+" "]}return null=3D=3Dt?null:t.jo=
in(", ")},getAllResponseHeaders:function(){return h?p:null},setRequestHeade=
r:function(e,t){return null=3D=3Dh&&(e=3Ds[e.toLowerCase()]=3Ds[e.toLowerCa=
se()]||e,a[e]=3Dt),this},overrideMimeType:function(e){return null=3D=3Dh&&(=
v.mimeType=3De),this},statusCode:function(e){var t;if(e)if(h)T.always(e[T.s=
tatus]);else for(t in e)w[t]=3D[w[t],e[t]];return this},abort:function(e){v=
ar t=3De||u;return c&&c.abort(t),l(0,t),this}};if(x.promise(T),v.url=3D((e|=
|v.url||Et.href)+"").replace($t,Et.protocol+"//"),v.type=3Dt.method||t.type=
||v.method||v.type,v.dataTypes=3D(v.dataType||"*").toLowerCase().match(D)||=
[""],null=3D=3Dv.crossDomain){r=3DC.createElement("a");try{r.href=3Dv.url,r=
.href=3Dr.href,v.crossDomain=3DXt.protocol+"//"+Xt.host!=3Dr.protocol+"//"+=
r.host}catch(e){v.crossDomain=3D!0}}if(v.data&&v.processData&&"string"!=3Dt=
ypeof v.data&&(v.data=3Dce.param(v.data,v.traditional)),Vt(Bt,v,t,T),h)retu=
rn T;for(i in(g=3Dce.event&&v.global)&&0=3D=3Dce.active++&&ce.event.trigger=
("ajaxStart"),v.type=3Dv.type.toUpperCase(),v.hasContent=3D!Ft.test(v.type)=
,f=3Dv.url.replace(Rt,""),v.hasContent?v.data&&v.processData&&0=3D=3D=3D(v.=
contentType||"").indexOf("application/x-www-form-urlencoded")&&(v.data=3Dv.=
data.replace(Mt,"+")):(o=3Dv.url.slice(f.length),v.data&&(v.processData||"s=
tring"=3D=3Dtypeof v.data)&&(f+=3D(At.test(f)?"&":"?")+v.data,delete v.data=
),!1=3D=3D=3Dv.cache&&(f=3Df.replace(It,"$1"),o=3D(At.test(f)?"&":"?")+"_=
=3D"+jt.guid+++o),v.url=3Df+o),v.ifModified&&(ce.lastModified[f]&&T.setRequ=
estHeader("If-Modified-Since",ce.lastModified[f]),ce.etag[f]&&T.setRequestH=
eader("If-None-Match",ce.etag[f])),(v.data&&v.hasContent&&!1!=3D=3Dv.conten=
tType||t.contentType)&&T.setRequestHeader("Content-Type",v.contentType),T.s=
etRequestHeader("Accept",v.dataTypes[0]&&v.accepts[v.dataTypes[0]]?v.accept=
s[v.dataTypes[0]]+("*"!=3D=3Dv.dataTypes[0]?", "+zt+"; q=3D0.01":""):v.acce=
pts["*"]),v.headers)T.setRequestHeader(i,v.headers[i]);if(v.beforeSend&&(!1=
=3D=3D=3Dv.beforeSend.call(y,T,v)||h))return T.abort();if(u=3D"abort",b.add=
(v.complete),T.done(v.success),T.fail(v.error),c=3DVt(_t,v,t,T)){if(T.ready=
State=3D1,g&&m.trigger("ajaxSend",[T,v]),h)return T;v.async&&0<v.timeout&&(=
d=3Die.setTimeout(function(){T.abort("timeout")},v.timeout));try{h=3D!1,c.s=
end(a,l)}catch(e){if(h)throw e;l(-1,e)}}else l(-1,"No Transport");function =
l(e,t,n,r){var i,o,a,s,u,l=3Dt;h||(h=3D!0,d&&ie.clearTimeout(d),c=3Dvoid 0,=
p=3Dr||"",T.readyState=3D0<e?4:0,i=3D200<=3De&&e<300||304=3D=3D=3De,n&&(s=
=3Dfunction(e,t,n){var r,i,o,a,s=3De.contents,u=3De.dataTypes;while("*"=3D=
=3D=3Du[0])u.shift(),void 0=3D=3D=3Dr&&(r=3De.mimeType||t.getResponseHeader=
("Content-Type"));if(r)for(i in s)if(s[i]&&s[i].test(r)){u.unshift(i);break=
}if(u[0]in n)o=3Du[0];else{for(i in n){if(!u[0]||e.converters[i+" "+u[0]]){=
o=3Di;break}a||(a=3Di)}o=3Do||a}if(o)return o!=3D=3Du[0]&&u.unshift(o),n[o]=
}(v,T,n)),!i&&-1<ce.inArray("script",v.dataTypes)&&ce.inArray("json",v.data=
Types)<0&&(v.converters["text script"]=3Dfunction(){}),s=3Dfunction(e,t,n,r=
){var i,o,a,s,u,l=3D{},c=3De.dataTypes.slice();if(c[1])for(a in e.converter=
s)l[a.toLowerCase()]=3De.converters[a];o=3Dc.shift();while(o)if(e.responseF=
ields[o]&&(n[e.responseFields[o]]=3Dt),!u&&r&&e.dataFilter&&(t=3De.dataFilt=
er(t,e.dataType)),u=3Do,o=3Dc.shift())if("*"=3D=3D=3Do)o=3Du;else if("*"!=
=3D=3Du&&u!=3D=3Do){if(!(a=3Dl[u+" "+o]||l["* "+o]))for(i in l)if((s=3Di.sp=
lit(" "))[1]=3D=3D=3Do&&(a=3Dl[u+" "+s[0]]||l["* "+s[0]])){!0=3D=3D=3Da?a=
=3Dl[i]:!0!=3D=3Dl[i]&&(o=3Ds[0],c.unshift(s[1]));break}if(!0!=3D=3Da)if(a&=
&e["throws"])t=3Da(t);else try{t=3Da(t)}catch(e){return{state:"parsererror"=
,error:a?e:"No conversion from "+u+" to "+o}}}return{state:"success",data:t=
}}(v,s,T,i),i?(v.ifModified&&((u=3DT.getResponseHeader("Last-Modified"))&&(=
ce.lastModified[f]=3Du),(u=3DT.getResponseHeader("etag"))&&(ce.etag[f]=3Du)=
),204=3D=3D=3De||"HEAD"=3D=3D=3Dv.type?l=3D"nocontent":304=3D=3D=3De?l=3D"n=
otmodified":(l=3Ds.state,o=3Ds.data,i=3D!(a=3Ds.error))):(a=3Dl,!e&&l||(l=
=3D"error",e<0&&(e=3D0))),T.status=3De,T.statusText=3D(t||l)+"",i?x.resolve=
With(y,[o,l,T]):x.rejectWith(y,[T,l,a]),T.statusCode(w),w=3Dvoid 0,g&&m.tri=
gger(i?"ajaxSuccess":"ajaxError",[T,v,i?o:a]),b.fireWith(y,[T,l]),g&&(m.tri=
gger("ajaxComplete",[T,v]),--ce.active||ce.event.trigger("ajaxStop")))}retu=
rn T},getJSON:function(e,t,n){return ce.get(e,t,n,"json")},getScript:functi=
on(e,t){return ce.get(e,void 0,t,"script")}}),ce.each(["get","post"],functi=
on(e,i){ce[i]=3Dfunction(e,t,n,r){return v(t)&&(r=3Dr||n,n=3Dt,t=3Dvoid 0),=
ce.ajax(ce.extend({url:e,type:i,dataType:r,data:t,success:n},ce.isPlainObje=
ct(e)&&e))}}),ce.ajaxPrefilter(function(e){var t;for(t in e.headers)"conten=
t-type"=3D=3D=3Dt.toLowerCase()&&(e.contentType=3De.headers[t]||"")}),ce._e=
valUrl=3Dfunction(e,t,n){return ce.ajax({url:e,type:"GET",dataType:"script"=
,cache:!0,async:!1,global:!1,converters:{"text script":function(){}},dataFi=
lter:function(e){ce.globalEval(e,t,n)}})},ce.fn.extend({wrapAll:function(e)=
{var t;return this[0]&&(v(e)&&(e=3De.call(this[0])),t=3Dce(e,this[0].ownerD=
ocument).eq(0).clone(!0),this[0].parentNode&&t.insertBefore(this[0]),t.map(=
function(){var e=3Dthis;while(e.firstElementChild)e=3De.firstElementChild;r=
eturn e}).append(this)),this},wrapInner:function(n){return v(n)?this.each(f=
unction(e){ce(this).wrapInner(n.call(this,e))}):this.each(function(){var e=
=3Dce(this),t=3De.contents();t.length?t.wrapAll(n):e.append(n)})},wrap:func=
tion(t){var n=3Dv(t);return this.each(function(e){ce(this).wrapAll(n?t.call=
(this,e):t)})},unwrap:function(e){return this.parent(e).not("body").each(fu=
nction(){ce(this).replaceWith(this.childNodes)}),this}}),ce.expr.pseudos.hi=
dden=3Dfunction(e){return!ce.expr.pseudos.visible(e)},ce.expr.pseudos.visib=
le=3Dfunction(e){return!!(e.offsetWidth||e.offsetHeight||e.getClientRects()=
.length)},ce.ajaxSettings.xhr=3Dfunction(){try{return new ie.XMLHttpRequest=
}catch(e){}};var Yt=3D{0:200,1223:204},Qt=3Dce.ajaxSettings.xhr();le.cors=
=3D!!Qt&&"withCredentials"in Qt,le.ajax=3DQt=3D!!Qt,ce.ajaxTransport(functi=
on(i){var o,a;if(le.cors||Qt&&!i.crossDomain)return{send:function(e,t){var =
n,r=3Di.xhr();if(r.open(i.type,i.url,i.async,i.username,i.password),i.xhrFi=
elds)for(n in i.xhrFields)r[n]=3Di.xhrFields[n];for(n in i.mimeType&&r.over=
rideMimeType&&r.overrideMimeType(i.mimeType),i.crossDomain||e["X-Requested-=
With"]||(e["X-Requested-With"]=3D"XMLHttpRequest"),e)r.setRequestHeader(n,e=
[n]);o=3Dfunction(e){return function(){o&&(o=3Da=3Dr.onload=3Dr.onerror=3Dr=
.onabort=3Dr.ontimeout=3Dr.onreadystatechange=3Dnull,"abort"=3D=3D=3De?r.ab=
ort():"error"=3D=3D=3De?"number"!=3Dtypeof r.status?t(0,"error"):t(r.status=
,r.statusText):t(Yt[r.status]||r.status,r.statusText,"text"!=3D=3D(r.respon=
seType||"text")||"string"!=3Dtypeof r.responseText?{binary:r.response}:{tex=
t:r.responseText},r.getAllResponseHeaders()))}},r.onload=3Do(),a=3Dr.onerro=
r=3Dr.ontimeout=3Do("error"),void 0!=3D=3Dr.onabort?r.onabort=3Da:r.onready=
statechange=3Dfunction(){4=3D=3D=3Dr.readyState&&ie.setTimeout(function(){o=
&&a()})},o=3Do("abort");try{r.send(i.hasContent&&i.data||null)}catch(e){if(=
o)throw e}},abort:function(){o&&o()}}}),ce.ajaxPrefilter(function(e){e.cros=
sDomain&&(e.contents.script=3D!1)}),ce.ajaxSetup({accepts:{script:"text/jav=
ascript, application/javascript, application/ecmascript, application/x-ecma=
script"},contents:{script:/\b(?:java|ecma)script\b/},converters:{"text scri=
pt":function(e){return ce.globalEval(e),e}}}),ce.ajaxPrefilter("script",fun=
ction(e){void 0=3D=3D=3De.cache&&(e.cache=3D!1),e.crossDomain&&(e.type=3D"G=
ET")}),ce.ajaxTransport("script",function(n){var r,i;if(n.crossDomain||n.sc=
riptAttrs)return{send:function(e,t){r=3Dce("<script>").attr(n.scriptAttrs||=
{}).prop({charset:n.scriptCharset,src:n.url}).on("load error",i=3Dfunction(=
e){r.remove(),i=3Dnull,e&&t("error"=3D=3D=3De.type?404:200,e.type)}),C.head=
.appendChild(r[0])},abort:function(){i&&i()}}});var Jt,Kt=3D[],Zt=3D/(=3D)\=
?(?=3D&|$)|\?\?/;ce.ajaxSetup({jsonp:"callback",jsonpCallback:function(){va=
r e=3DKt.pop()||ce.expando+"_"+jt.guid++;return this[e]=3D!0,e}}),ce.ajaxPr=
efilter("json jsonp",function(e,t,n){var r,i,o,a=3D!1!=3D=3De.jsonp&&(Zt.te=
st(e.url)?"url":"string"=3D=3Dtypeof e.data&&0=3D=3D=3D(e.contentType||"").=
indexOf("application/x-www-form-urlencoded")&&Zt.test(e.data)&&"data");if(a=
||"jsonp"=3D=3D=3De.dataTypes[0])return r=3De.jsonpCallback=3Dv(e.jsonpCall=
back)?e.jsonpCallback():e.jsonpCallback,a?e[a]=3De[a].replace(Zt,"$1"+r):!1=
!=3D=3De.jsonp&&(e.url+=3D(At.test(e.url)?"&":"?")+e.jsonp+"=3D"+r),e.conve=
rters["script json"]=3Dfunction(){return o||ce.error(r+" was not called"),o=
[0]},e.dataTypes[0]=3D"json",i=3Die[r],ie[r]=3Dfunction(){o=3Darguments},n.=
always(function(){void 0=3D=3D=3Di?ce(ie).removeProp(r):ie[r]=3Di,e[r]&&(e.=
jsonpCallback=3Dt.jsonpCallback,Kt.push(r)),o&&v(i)&&i(o[0]),o=3Di=3Dvoid 0=
}),"script"}),le.createHTMLDocument=3D((Jt=3DC.implementation.createHTMLDoc=
ument("").body).innerHTML=3D"<form></form><form></form>",2=3D=3D=3DJt.child=
Nodes.length),ce.parseHTML=3Dfunction(e,t,n){return"string"!=3Dtypeof e?[]:=
("boolean"=3D=3Dtypeof t&&(n=3Dt,t=3D!1),t||(le.createHTMLDocument?((r=3D(t=
=3DC.implementation.createHTMLDocument("")).createElement("base")).href=3DC=
.location.href,t.head.appendChild(r)):t=3DC),o=3D!n&&[],(i=3Dw.exec(e))?[t.=
createElement(i[1])]:(i=3DAe([e],t,o),o&&o.length&&ce(o).remove(),ce.merge(=
[],i.childNodes)));var r,i,o},ce.fn.load=3Dfunction(e,t,n){var r,i,o,a=3Dth=
is,s=3De.indexOf(" ");return-1<s&&(r=3DTt(e.slice(s)),e=3De.slice(0,s)),v(t=
)?(n=3Dt,t=3Dvoid 0):t&&"object"=3D=3Dtypeof t&&(i=3D"POST"),0<a.length&&ce=
.ajax({url:e,type:i||"GET",dataType:"html",data:t}).done(function(e){o=3Dar=
guments,a.html(r?ce("<div>").append(ce.parseHTML(e)).find(r):e)}).always(n&=
&function(e,t){a.each(function(){n.apply(this,o||[e.responseText,t,e])})}),=
this},ce.expr.pseudos.animated=3Dfunction(t){return ce.grep(ce.timers,funct=
ion(e){return t=3D=3D=3De.elem}).length},ce.offset=3D{setOffset:function(e,=
t,n){var r,i,o,a,s,u,l=3Dce.css(e,"position"),c=3Dce(e),f=3D{};"static"=3D=
=3D=3Dl&&(e.style.position=3D"relative"),s=3Dc.offset(),o=3Dce.css(e,"top")=
,u=3Dce.css(e,"left"),("absolute"=3D=3D=3Dl||"fixed"=3D=3D=3Dl)&&-1<(o+u).i=
ndexOf("auto")?(a=3D(r=3Dc.position()).top,i=3Dr.left):(a=3DparseFloat(o)||=
0,i=3DparseFloat(u)||0),v(t)&&(t=3Dt.call(e,n,ce.extend({},s))),null!=3Dt.t=
op&&(f.top=3Dt.top-s.top+a),null!=3Dt.left&&(f.left=3Dt.left-s.left+i),"usi=
ng"in t?t.using.call(e,f):c.css(f)}},ce.fn.extend({offset:function(t){if(ar=
guments.length)return void 0=3D=3D=3Dt?this:this.each(function(e){ce.offset=
.setOffset(this,t,e)});var e,n,r=3Dthis[0];return r?r.getClientRects().leng=
th?(e=3Dr.getBoundingClientRect(),n=3Dr.ownerDocument.defaultView,{top:e.to=
p+n.pageYOffset,left:e.left+n.pageXOffset}):{top:0,left:0}:void 0},position=
:function(){if(this[0]){var e,t,n,r=3Dthis[0],i=3D{top:0,left:0};if("fixed"=
=3D=3D=3Dce.css(r,"position"))t=3Dr.getBoundingClientRect();else{t=3Dthis.o=
ffset(),n=3Dr.ownerDocument,e=3Dr.offsetParent||n.documentElement;while(e&&=
(e=3D=3D=3Dn.body||e=3D=3D=3Dn.documentElement)&&"static"=3D=3D=3Dce.css(e,=
"position"))e=3De.parentNode;e&&e!=3D=3Dr&&1=3D=3D=3De.nodeType&&((i=3Dce(e=
).offset()).top+=3Dce.css(e,"borderTopWidth",!0),i.left+=3Dce.css(e,"border=
LeftWidth",!0))}return{top:t.top-i.top-ce.css(r,"marginTop",!0),left:t.left=
-i.left-ce.css(r,"marginLeft",!0)}}},offsetParent:function(){return this.ma=
p(function(){var e=3Dthis.offsetParent;while(e&&"static"=3D=3D=3Dce.css(e,"=
position"))e=3De.offsetParent;return e||J})}}),ce.each({scrollLeft:"pageXOf=
fset",scrollTop:"pageYOffset"},function(t,i){var o=3D"pageYOffset"=3D=3D=3D=
i;ce.fn[t]=3Dfunction(e){return M(this,function(e,t,n){var r;if(y(e)?r=3De:=
9=3D=3D=3De.nodeType&&(r=3De.defaultView),void 0=3D=3D=3Dn)return r?r[i]:e[=
t];r?r.scrollTo(o?r.pageXOffset:n,o?n:r.pageYOffset):e[t]=3Dn},t,e,argument=
s.length)}}),ce.each(["top","left"],function(e,n){ce.cssHooks[n]=3DYe(le.pi=
xelPosition,function(e,t){if(t)return t=3DGe(e,n),_e.test(t)?ce(e).position=
()[n]+"px":t})}),ce.each({Height:"height",Width:"width"},function(a,s){ce.e=
ach({padding:"inner"+a,content:s,"":"outer"+a},function(r,o){ce.fn[o]=3Dfun=
ction(e,t){var n=3Darguments.length&&(r||"boolean"!=3Dtypeof e),i=3Dr||(!0=
=3D=3D=3De||!0=3D=3D=3Dt?"margin":"border");return M(this,function(e,t,n){v=
ar r;return y(e)?0=3D=3D=3Do.indexOf("outer")?e["inner"+a]:e.document.docum=
entElement["client"+a]:9=3D=3D=3De.nodeType?(r=3De.documentElement,Math.max=
(e.body["scroll"+a],r["scroll"+a],e.body["offset"+a],r["offset"+a],r["clien=
t"+a])):void 0=3D=3D=3Dn?ce.css(e,t,i):ce.style(e,t,n,i)},s,n?e:void 0,n)}}=
)}),ce.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess=
","ajaxSend"],function(e,t){ce.fn[t]=3Dfunction(e){return this.on(t,e)}}),c=
e.fn.extend({bind:function(e,t,n){return this.on(e,null,t,n)},unbind:functi=
on(e,t){return this.off(e,null,t)},delegate:function(e,t,n,r){return this.o=
n(t,e,n,r)},undelegate:function(e,t,n){return 1=3D=3D=3Darguments.length?th=
is.off(e,"**"):this.off(t,e||"**",n)},hover:function(e,t){return this.on("m=
ouseenter",e).on("mouseleave",t||e)}}),ce.each("blur focus focusin focusout=
 resize scroll click dblclick mousedown mouseup mousemove mouseover mouseou=
t mouseenter mouseleave change select submit keydown keypress keyup context=
menu".split(" "),function(e,n){ce.fn[n]=3Dfunction(e,t){return 0<arguments.=
length?this.on(n,null,e,t):this.trigger(n)}});var en=3D/^[\s\uFEFF\xA0]+|([=
^\s\uFEFF\xA0])[\s\uFEFF\xA0]+$/g;ce.proxy=3Dfunction(e,t){var n,r,i;if("st=
ring"=3D=3Dtypeof t&&(n=3De[t],t=3De,e=3Dn),v(e))return r=3Dae.call(argumen=
ts,2),(i=3Dfunction(){return e.apply(t||this,r.concat(ae.call(arguments)))}=
).guid=3De.guid=3De.guid||ce.guid++,i},ce.holdReady=3Dfunction(e){e?ce.read=
yWait++:ce.ready(!0)},ce.isArray=3DArray.isArray,ce.parseJSON=3DJSON.parse,=
ce.nodeName=3Dfe,ce.isFunction=3Dv,ce.isWindow=3Dy,ce.camelCase=3DF,ce.type=
=3Dx,ce.now=3DDate.now,ce.isNumeric=3Dfunction(e){var t=3Dce.type(e);return=
("number"=3D=3D=3Dt||"string"=3D=3D=3Dt)&&!isNaN(e-parseFloat(e))},ce.trim=
=3Dfunction(e){return null=3D=3De?"":(e+"").replace(en,"$1")},"function"=3D=
=3Dtypeof define&&define.amd&&define("jquery",[],function(){return ce});var=
 tn=3Die.jQuery,nn=3Die.$;return ce.noConflict=3Dfunction(e){return ie.$=3D=
=3D=3Dce&&(ie.$=3Dnn),e&&ie.jQuery=3D=3D=3Dce&&(ie.jQuery=3Dtn),ce},"undefi=
ned"=3D=3Dtypeof e&&(ie.jQuery=3Die.$=3Dce),ce});
diff --git a/templates/base.html b/templates/base.html
index f00c976..e2bafdd 100644
--- a/templates/base.html
+++ b/templates/base.html
@@ -134,7 +134,7 @@
         {% endblock %}
     </div>
=20
-    <script src=3D"{% static "js/jquery-3.4.1.js" %}"></script>
+    <script src=3D"{% static "js/jquery-3.7.1.min.js" %}"></script>
     <script src=3D"{% static "js/bootstrap.js" %}"></script>
 {% block scripts %}
 {% endblock %}
--=20
2.34.1


